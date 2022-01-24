#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ type; } ;
typedef  TYPE_1__ scope_t ;
typedef  TYPE_2__* path_entry_t ;
struct TYPE_11__ {int quoted_includes_only; scalar_t__ type; int /*<<< orphan*/ * directory; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_CANTCREAT ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 scalar_t__ SCOPE_ROOT ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOURCE_FILE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* appname ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  cs_tailq ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 void* FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC10 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int includes_search_curdir ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/ * listfile ; 
 char* listfilename ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int mm_flex_debug ; 
 int mmdebug ; 
 int /*<<< orphan*/ * ofile ; 
 char* ofilename ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  patches ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/ * regdiagfile ; 
 char* regdiagfilename ; 
 int /*<<< orphan*/ * regfile ; 
 char* regfilename ; 
 TYPE_1__* FUNC17 () ; 
 int /*<<< orphan*/  scope_stack ; 
 int /*<<< orphan*/  search_path ; 
 int /*<<< orphan*/  seq_program ; 
 int /*<<< orphan*/  stderr ; 
 char* stock_include_file ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int yy_flex_debug ; 
 int yydebug ; 
 int FUNC24 () ; 

int
FUNC25(int argc, char *argv[])
{
	extern char *optarg;
	extern int optind;
	int  ch;
	int  retval;
	char *inputfilename;
	scope_t *sentinal;

	FUNC4(&patches);
	FUNC1(&search_path);
	FUNC4(&seq_program);
	FUNC5(&cs_tailq);
	FUNC1(&scope_stack);

	/* Set Sentinal scope node */
	sentinal = FUNC17();
	sentinal->type = SCOPE_ROOT;
	
	includes_search_curdir = 1;
	appname = *argv;
	regfile = NULL;
	listfile = NULL;
#if DEBUG
	yy_flex_debug = 0;
	mm_flex_debug = 0;
	yydebug = 0;
	mmdebug = 0;
#endif
	while ((ch = FUNC10(argc, argv, "d:i:l:n:o:p:r:I:")) != -1) {
		switch(ch) {
		case 'd':
#if DEBUG
			if (strcmp(optarg, "s") == 0) {
				yy_flex_debug = 1;
				mm_flex_debug = 1;
			} else if (strcmp(optarg, "p") == 0) {
				yydebug = 1;
				mmdebug = 1;
			} else {
				fprintf(stderr, "%s: -d Requires either an "
					"'s' or 'p' argument\n", appname);
				usage();
			}
#else
			FUNC18("-d: Assembler not built with debugging "
			     "information", EX_SOFTWARE);
#endif
			break;
		case 'i':
			stock_include_file = optarg;
			break;
		case 'l':
			/* Create a program listing */
			if ((listfile = FUNC8(optarg, "w")) == NULL) {
				FUNC15(optarg);
				FUNC18(NULL, EX_CANTCREAT);
			}
			listfilename = optarg;
			break;
		case 'n':
			/* Don't complain about the -nostdinc directrive */
			if (FUNC19(optarg, "ostdinc")) {
				FUNC9(stderr, "%s: Unknown option -%c%s\n",
					appname, ch, optarg);
				FUNC23();
				/* NOTREACHED */
			}
			break;
		case 'o':
			if ((ofile = FUNC8(optarg, "w")) == NULL) {
				FUNC15(optarg);
				FUNC18(NULL, EX_CANTCREAT);
			}
			ofilename = optarg;
			break;
		case 'p':
			/* Create Register Diagnostic "printing" Functions */
			if ((regdiagfile = FUNC8(optarg, "w")) == NULL) {
				FUNC15(optarg);
				FUNC18(NULL, EX_CANTCREAT);
			}
			regdiagfilename = optarg;
			break;
		case 'r':
			if ((regfile = FUNC8(optarg, "w")) == NULL) {
				FUNC15(optarg);
				FUNC18(NULL, EX_CANTCREAT);
			}
			regfilename = optarg;
			break;
		case 'I':
		{
			path_entry_t include_dir;

			if (FUNC19(optarg, "-") == 0) {
				if (includes_search_curdir == 0) {
					FUNC9(stderr, "%s: Warning - '-I-' "
							"specified multiple "
							"times\n", appname);
				}
				includes_search_curdir = 0;
				for (include_dir = FUNC0(&search_path);
				     include_dir != NULL;
				     include_dir = FUNC3(include_dir,
							      links))
					/*
					 * All entries before a '-I-' only
					 * apply to includes specified with
					 * quotes instead of "<>".
					 */
					include_dir->quoted_includes_only = 1;
			} else {
				include_dir =
				    (path_entry_t)FUNC12(sizeof(*include_dir));
				if (include_dir == NULL) {
					FUNC15(optarg);
					FUNC18(NULL, EX_OSERR);
				}
				include_dir->directory = FUNC20(optarg);
				if (include_dir->directory == NULL) {
					FUNC15(optarg);
					FUNC18(NULL, EX_OSERR);
				}
				include_dir->quoted_includes_only = 0;
				FUNC2(&search_path, include_dir,
						  links);
			}
			break;
		}
		case '?':
		default:
			FUNC23();
			/* NOTREACHED */
		}
	}
	argc -= optind;
	argv += optind;

	if (argc != 1) {
		FUNC9(stderr, "%s: No input file specified\n", appname);
		FUNC23();
		/* NOTREACHED */
	}

	if (regdiagfile != NULL
	 && (regfile == NULL || stock_include_file == NULL)) {
		FUNC9(stderr,
			"%s: The -p option requires the -r and -i options.\n",
			appname);
		FUNC23();
		/* NOTREACHED */
	}
	FUNC22();
	inputfilename = *argv;
	FUNC11(*argv, SOURCE_FILE);
	retval = FUNC24();
	if (retval == 0) {
		if (FUNC0(&scope_stack) == NULL
		 || FUNC0(&scope_stack)->type != SCOPE_ROOT) {
			FUNC18("Unterminated conditional expression", EX_DATAERR);
			/* NOTREACHED */
		}

		/* Process outmost scope */
		FUNC16(FUNC0(&scope_stack));
		/*
		 * Decend the tree of scopes and insert/emit
		 * patches as appropriate.  We perform a depth first
		 * tranversal, recursively handling each scope.
		 */
		/* start at the root scope */
		FUNC7(FUNC0(&scope_stack));

		/* Patch up forward jump addresses */
		FUNC6();

		if (ofile != NULL)
			FUNC13();
		if (regfile != NULL)
			FUNC21(regfile, regdiagfile);
		if (listfile != NULL)
			FUNC14(inputfilename);
	}

	FUNC18(NULL, 0);
	/* NOTREACHED */
	return (0);
}