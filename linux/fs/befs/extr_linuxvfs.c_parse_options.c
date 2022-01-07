
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct befs_mount_options {int use_uid; int use_gid; int debug; int * iocharset; int gid; int uid; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int INVALID_GID ;
 int INVALID_UID ;
 int MAX_OPT_ARGS ;




 int befs_tokens ;
 int current_user_ns () ;
 int gid_valid (int ) ;
 int kfree (int *) ;
 int make_kgid (int ,int) ;
 int make_kuid (int ,int) ;
 int match_int (int *,int*) ;
 int * match_strdup (int *) ;
 int match_token (char*,int ,int *) ;
 int pr_err (char*,...) ;
 char* strsep (char**,char*) ;
 int uid_valid (int ) ;

__attribute__((used)) static int
parse_options(char *options, struct befs_mount_options *opts)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int option;
 kuid_t uid;
 kgid_t gid;


 opts->uid = GLOBAL_ROOT_UID;
 opts->gid = GLOBAL_ROOT_GID;
 opts->use_uid = 0;
 opts->use_gid = 0;
 opts->iocharset = ((void*)0);
 opts->debug = 0;

 if (!options)
  return 1;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token;

  if (!*p)
   continue;

  token = match_token(p, befs_tokens, args);
  switch (token) {
  case 128:
   if (match_int(&args[0], &option))
    return 0;
   uid = INVALID_UID;
   if (option >= 0)
    uid = make_kuid(current_user_ns(), option);
   if (!uid_valid(uid)) {
    pr_err("Invalid uid %d, "
           "using default\n", option);
    break;
   }
   opts->uid = uid;
   opts->use_uid = 1;
   break;
  case 129:
   if (match_int(&args[0], &option))
    return 0;
   gid = INVALID_GID;
   if (option >= 0)
    gid = make_kgid(current_user_ns(), option);
   if (!gid_valid(gid)) {
    pr_err("Invalid gid %d, "
           "using default\n", option);
    break;
   }
   opts->gid = gid;
   opts->use_gid = 1;
   break;
  case 131:
   kfree(opts->iocharset);
   opts->iocharset = match_strdup(&args[0]);
   if (!opts->iocharset) {
    pr_err("allocation failure for "
           "iocharset string\n");
    return 0;
   }
   break;
  case 130:
   opts->debug = 1;
   break;
  default:
   pr_err("Unrecognized mount option \"%s\" "
          "or missing value\n", p);
   return 0;
  }
 }
 return 1;
}
