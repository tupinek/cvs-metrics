use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'          => 'CVS::Metrics',
    'VERSION_FROM'  => 'lib/Metrics.pm',
    'ABSTRACT'      => 'Utilities for process cvs log',
    'PREREQ_PM'     => {
        'Chart::Plot::Canvas'   => 0.04,
        'HTML::Template'        => 0,
        'GD'                    => 0,
        'GD::Graph'             => 0,
        'Parse::RecDescent'     => 0,
    },
    'PM'            => {
        'lib/Metrics.pm'        => '$(INST_LIBDIR)/Metrics.pm',
        'lib/Parser.pm'         => '$(INST_LIBDIR)/Metrics/Parser.pm',
        'lib/Graph.pm'          => '$(INST_LIBDIR)/Metrics/Graph.pm',
    },
    'EXE_FILES'     => [
        'bin/cvs_activity',
        'bin/cvs_energy',
        'bin/cvs_tklog',
        'bin/cvs_wxlog',
        'bin/cvs_current',
        'bin/cvs_revbytag',
        'bin/cgi_cvs_evolq',
        'bin/cgi_cvs_evolr',
    ],
    'AUTHOR'        => 'Francois PERRAD <francois.perrad@gadz.org>',
    'dist'          => {
        'COMPRESS'      => 'gzip',
        'SUFFIX'        => '.gz',
    },
    'test'          => {
        'TESTS' => 't/CVS::Metrics/*.t '.
            't/CVS::Metrics::Graph/*.t '.
            't/CVS::Metrics::Parser/*.t',
    },
);

