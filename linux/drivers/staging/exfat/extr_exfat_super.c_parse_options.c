
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int substring_t ;
struct exfat_mount_options {int fs_fmask; int fs_dmask; int allow_utime; int codepage; char* iocharset; int casesensitive; int discard; void* errors; int fs_gid; int fs_uid; } ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int umask; } ;


 int EINVAL ;
 int ENOMEM ;
 void* EXFAT_ERRORS_CONT ;
 void* EXFAT_ERRORS_PANIC ;
 void* EXFAT_ERRORS_RO ;
 int KGIDT_INIT (int) ;
 int KUIDT_INIT (int) ;
 int MAX_OPT_ARGS ;
 int U16_MAX ;
 TYPE_2__* current ;
 int current_gid () ;
 int current_uid () ;
 int exfat_default_codepage ;
 char* exfat_default_iocharset ;
 int exfat_tokens ;
 int kfree (char*) ;
 int match_int (int *,int*) ;
 int match_octal (int *,int*) ;
 char* match_strdup (int *) ;
 int match_token (char*,int ,int *) ;
 int pr_err (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int parse_options(char *options, int silent, int *debug,
    struct exfat_mount_options *opts)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int option;
 char *iocharset;

 opts->fs_uid = current_uid();
 opts->fs_gid = current_gid();
 opts->fs_fmask = opts->fs_dmask = current->fs->umask;
 opts->allow_utime = U16_MAX;
 opts->codepage = exfat_default_codepage;
 opts->iocharset = exfat_default_iocharset;
 opts->casesensitive = 0;
 opts->errors = EXFAT_ERRORS_RO;



 *debug = 0;

 if (!options)
  goto out;

 while ((p = strsep(&options, ","))) {
  int token;

  if (!*p)
   continue;

  token = match_token(p, exfat_tokens, args);
  switch (token) {
  case 130:
   if (match_int(&args[0], &option))
    return 0;
   opts->fs_uid = KUIDT_INIT(option);
   break;
  case 132:
   if (match_int(&args[0], &option))
    return 0;
   opts->fs_gid = KGIDT_INIT(option);
   break;
  case 129:
  case 137:
  case 133:
   if (match_octal(&args[0], &option))
    return 0;
   if (token != 137)
    opts->fs_fmask = option;
   if (token != 133)
    opts->fs_dmask = option;
   break;
  case 142:
   if (match_octal(&args[0], &option))
    return 0;
   opts->allow_utime = option & 0022;
   break;
  case 140:
   if (match_int(&args[0], &option))
    return 0;
   opts->codepage = option;
   break;
  case 141:
   if (opts->iocharset != exfat_default_iocharset)
    kfree(opts->iocharset);
   iocharset = match_strdup(&args[0]);
   if (!iocharset)
    return -ENOMEM;
   opts->iocharset = iocharset;
   break;
  case 131:
   if (match_int(&args[0], &option))
    return 0;
   opts->casesensitive = option;
   break;
  case 136:
   opts->errors = EXFAT_ERRORS_CONT;
   break;
  case 135:
   opts->errors = EXFAT_ERRORS_PANIC;
   break;
  case 134:
   opts->errors = EXFAT_ERRORS_RO;
   break;
  case 139:
   *debug = 1;
   break;





  case 128:
   break;
  default:
   if (!silent)
    pr_err("[EXFAT] Unrecognized mount option %s or missing value\n",
           p);
   return -EINVAL;
  }
 }

out:
 if (opts->allow_utime == U16_MAX)
  opts->allow_utime = ~opts->fs_dmask & 0022;

 return 0;
}
