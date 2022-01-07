
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int substring_t ;
struct pts_mount_opts {int setuid; int setgid; int mode; int ptmxmode; int max; int reserve; int gid; int uid; } ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_8__ {TYPE_1__* nsproxy; } ;
struct TYPE_7__ {TYPE_2__* nsproxy; } ;
struct TYPE_6__ {scalar_t__ mnt_ns; } ;
struct TYPE_5__ {scalar_t__ mnt_ns; } ;


 int DEVPTS_DEFAULT_MODE ;
 int DEVPTS_DEFAULT_PTMX_MODE ;
 int EINVAL ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int MAX_OPT_ARGS ;
 int NR_UNIX98_PTY_MAX ;






 int PARSE_MOUNT ;
 int S_IALLUGO ;
 TYPE_4__* current ;
 int current_user_ns () ;
 int gid_valid (int ) ;
 TYPE_3__ init_task ;
 int make_kgid (int ,int) ;
 int make_kuid (int ,int) ;
 int match_int (int *,int*) ;
 int match_octal (int *,int*) ;
 int match_token (char*,int ,int *) ;
 int pr_err (char*) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int uid_valid (int ) ;

__attribute__((used)) static int parse_mount_options(char *data, int op, struct pts_mount_opts *opts)
{
 char *p;
 kuid_t uid;
 kgid_t gid;

 opts->setuid = 0;
 opts->setgid = 0;
 opts->uid = GLOBAL_ROOT_UID;
 opts->gid = GLOBAL_ROOT_GID;
 opts->mode = DEVPTS_DEFAULT_MODE;
 opts->ptmxmode = DEVPTS_DEFAULT_PTMX_MODE;
 opts->max = NR_UNIX98_PTY_MAX;




 if (op == PARSE_MOUNT)
  opts->reserve =
   (current->nsproxy->mnt_ns == init_task.nsproxy->mnt_ns);

 while ((p = strsep(&data, ",")) != ((void*)0)) {
  substring_t args[MAX_OPT_ARGS];
  int token;
  int option;

  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 128:
   if (match_int(&args[0], &option))
    return -EINVAL;
   uid = make_kuid(current_user_ns(), option);
   if (!uid_valid(uid))
    return -EINVAL;
   opts->uid = uid;
   opts->setuid = 1;
   break;
  case 133:
   if (match_int(&args[0], &option))
    return -EINVAL;
   gid = make_kgid(current_user_ns(), option);
   if (!gid_valid(gid))
    return -EINVAL;
   opts->gid = gid;
   opts->setgid = 1;
   break;
  case 131:
   if (match_octal(&args[0], &option))
    return -EINVAL;
   opts->mode = option & S_IALLUGO;
   break;
  case 129:
   if (match_octal(&args[0], &option))
    return -EINVAL;
   opts->ptmxmode = option & S_IALLUGO;
   break;
  case 130:
   break;
  case 132:
   if (match_int(&args[0], &option) ||
       option < 0 || option > NR_UNIX98_PTY_MAX)
    return -EINVAL;
   opts->max = option;
   break;
  default:
   pr_err("called with bogus options\n");
   return -EINVAL;
  }
 }

 return 0;
}
