
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type; } ;
typedef TYPE_1__ scope_t ;
typedef TYPE_2__* path_entry_t ;
struct TYPE_11__ {int quoted_includes_only; scalar_t__ type; int * directory; } ;


 int EX_CANTCREAT ;
 int EX_DATAERR ;
 int EX_OSERR ;
 int EX_SOFTWARE ;
 scalar_t__ SCOPE_ROOT ;
 TYPE_2__* SLIST_FIRST (int *) ;
 int SLIST_INIT (int *) ;
 int SLIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 TYPE_2__* SLIST_NEXT (TYPE_2__*,int ) ;
 int SOURCE_FILE ;
 int STAILQ_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 char* appname ;
 int back_patch () ;
 int cs_tailq ;
 int dump_scope (TYPE_2__*) ;
 void* fopen (char*,char*) ;
 int fprintf (int ,char*,char*,...) ;
 int getopt (int,char**,char*) ;
 int include_file (char*,int ) ;
 int includes_search_curdir ;
 int links ;
 int * listfile ;
 char* listfilename ;
 int malloc (int) ;
 int mm_flex_debug ;
 int mmdebug ;
 int * ofile ;
 char* ofilename ;
 int output_code () ;
 int output_listing (char*) ;
 int patches ;
 int perror (char*) ;
 int process_scope (TYPE_2__*) ;
 int * regdiagfile ;
 char* regdiagfilename ;
 int * regfile ;
 char* regfilename ;
 TYPE_1__* scope_alloc () ;
 int scope_stack ;
 int search_path ;
 int seq_program ;
 int stderr ;
 char* stock_include_file ;
 int stop (char*,int ) ;
 int strcmp (char*,char*) ;
 int * strdup (char*) ;
 int symtable_dump (int *,int *) ;
 int symtable_open () ;
 int usage () ;
 int yy_flex_debug ;
 int yydebug ;
 int yyparse () ;

int
main(int argc, char *argv[])
{
 extern char *optarg;
 extern int optind;
 int ch;
 int retval;
 char *inputfilename;
 scope_t *sentinal;

 STAILQ_INIT(&patches);
 SLIST_INIT(&search_path);
 STAILQ_INIT(&seq_program);
 TAILQ_INIT(&cs_tailq);
 SLIST_INIT(&scope_stack);


 sentinal = scope_alloc();
 sentinal->type = SCOPE_ROOT;

 includes_search_curdir = 1;
 appname = *argv;
 regfile = ((void*)0);
 listfile = ((void*)0);






 while ((ch = getopt(argc, argv, "d:i:l:n:o:p:r:I:")) != -1) {
  switch(ch) {
  case 'd':
   stop("-d: Assembler not built with debugging "
        "information", EX_SOFTWARE);

   break;
  case 'i':
   stock_include_file = optarg;
   break;
  case 'l':

   if ((listfile = fopen(optarg, "w")) == ((void*)0)) {
    perror(optarg);
    stop(((void*)0), EX_CANTCREAT);
   }
   listfilename = optarg;
   break;
  case 'n':

   if (strcmp(optarg, "ostdinc")) {
    fprintf(stderr, "%s: Unknown option -%c%s\n",
     appname, ch, optarg);
    usage();

   }
   break;
  case 'o':
   if ((ofile = fopen(optarg, "w")) == ((void*)0)) {
    perror(optarg);
    stop(((void*)0), EX_CANTCREAT);
   }
   ofilename = optarg;
   break;
  case 'p':

   if ((regdiagfile = fopen(optarg, "w")) == ((void*)0)) {
    perror(optarg);
    stop(((void*)0), EX_CANTCREAT);
   }
   regdiagfilename = optarg;
   break;
  case 'r':
   if ((regfile = fopen(optarg, "w")) == ((void*)0)) {
    perror(optarg);
    stop(((void*)0), EX_CANTCREAT);
   }
   regfilename = optarg;
   break;
  case 'I':
  {
   path_entry_t include_dir;

   if (strcmp(optarg, "-") == 0) {
    if (includes_search_curdir == 0) {
     fprintf(stderr, "%s: Warning - '-I-' "
       "specified multiple "
       "times\n", appname);
    }
    includes_search_curdir = 0;
    for (include_dir = SLIST_FIRST(&search_path);
         include_dir != ((void*)0);
         include_dir = SLIST_NEXT(include_dir,
             links))





     include_dir->quoted_includes_only = 1;
   } else {
    include_dir =
        (path_entry_t)malloc(sizeof(*include_dir));
    if (include_dir == ((void*)0)) {
     perror(optarg);
     stop(((void*)0), EX_OSERR);
    }
    include_dir->directory = strdup(optarg);
    if (include_dir->directory == ((void*)0)) {
     perror(optarg);
     stop(((void*)0), EX_OSERR);
    }
    include_dir->quoted_includes_only = 0;
    SLIST_INSERT_HEAD(&search_path, include_dir,
        links);
   }
   break;
  }
  case '?':
  default:
   usage();

  }
 }
 argc -= optind;
 argv += optind;

 if (argc != 1) {
  fprintf(stderr, "%s: No input file specified\n", appname);
  usage();

 }

 if (regdiagfile != ((void*)0)
  && (regfile == ((void*)0) || stock_include_file == ((void*)0))) {
  fprintf(stderr,
   "%s: The -p option requires the -r and -i options.\n",
   appname);
  usage();

 }
 symtable_open();
 inputfilename = *argv;
 include_file(*argv, SOURCE_FILE);
 retval = yyparse();
 if (retval == 0) {
  if (SLIST_FIRST(&scope_stack) == ((void*)0)
   || SLIST_FIRST(&scope_stack)->type != SCOPE_ROOT) {
   stop("Unterminated conditional expression", EX_DATAERR);

  }


  process_scope(SLIST_FIRST(&scope_stack));






  dump_scope(SLIST_FIRST(&scope_stack));


  back_patch();

  if (ofile != ((void*)0))
   output_code();
  if (regfile != ((void*)0))
   symtable_dump(regfile, regdiagfile);
  if (listfile != ((void*)0))
   output_listing(inputfilename);
 }

 stop(((void*)0), 0);

 return (0);
}
