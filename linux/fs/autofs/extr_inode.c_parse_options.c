
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct inode {int i_gid; int i_uid; } ;
struct autofs_sb_info {int min_proto; int max_proto; int pipefd; int flags; int type; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int AUTOFS_MAX_PROTO_VERSION ;
 int AUTOFS_MIN_PROTO_VERSION ;
 int AUTOFS_SBI_IGNORE ;
 int AUTOFS_SBI_STRICTEXPIRE ;
 int MAX_OPT_ARGS ;
 int current_gid () ;
 int current_uid () ;
 int current_user_ns () ;
 int gid_valid (int ) ;
 int make_kgid (int ,int) ;
 int make_kuid (int ,int) ;
 int match_int (int *,int*) ;
 int match_token (char*,int ,int *) ;
 int set_autofs_type_direct (int *) ;
 int set_autofs_type_indirect (int *) ;
 int set_autofs_type_offset (int *) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int uid_valid (int ) ;

__attribute__((used)) static int parse_options(char *options,
    struct inode *root, int *pgrp, bool *pgrp_set,
    struct autofs_sb_info *sbi)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int option;
 int pipefd = -1;
 kuid_t uid;
 kgid_t gid;

 root->i_uid = current_uid();
 root->i_gid = current_gid();

 sbi->min_proto = AUTOFS_MIN_PROTO_VERSION;
 sbi->max_proto = AUTOFS_MAX_PROTO_VERSION;

 sbi->pipefd = -1;

 if (!options)
  return 1;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token;

  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 137:
   if (match_int(args, &pipefd))
    return 1;
   sbi->pipefd = pipefd;
   break;
  case 128:
   if (match_int(args, &option))
    return 1;
   uid = make_kuid(current_user_ns(), option);
   if (!uid_valid(uid))
    return 1;
   root->i_uid = uid;
   break;
  case 136:
   if (match_int(args, &option))
    return 1;
   gid = make_kgid(current_user_ns(), option);
   if (!gid_valid(gid))
    return 1;
   root->i_gid = gid;
   break;
  case 130:
   if (match_int(args, &option))
    return 1;
   *pgrp = option;
   *pgrp_set = 1;
   break;
  case 132:
   if (match_int(args, &option))
    return 1;
   sbi->min_proto = option;
   break;
  case 133:
   if (match_int(args, &option))
    return 1;
   sbi->max_proto = option;
   break;
  case 134:
   set_autofs_type_indirect(&sbi->type);
   break;
  case 138:
   set_autofs_type_direct(&sbi->type);
   break;
  case 131:
   set_autofs_type_offset(&sbi->type);
   break;
  case 129:
   sbi->flags |= AUTOFS_SBI_STRICTEXPIRE;
   break;
  case 135:
   sbi->flags |= AUTOFS_SBI_IGNORE;
   break;
  default:
   return 1;
  }
 }
 return (sbi->pipefd < 0);
}
