
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct super_block {int dummy; } ;
struct adfs_sb_info {int s_owner_mask; int s_other_mask; int s_ftsuffix; int s_gid; int s_uid; } ;


 int EINVAL ;
 int KERN_ERR ;
 int MAX_OPT_ARGS ;





 int adfs_msg (struct super_block*,int ,char*,char*) ;
 int current_user_ns () ;
 int gid_valid (int ) ;
 int make_kgid (int ,int) ;
 int make_kuid (int ,int) ;
 int match_int (int *,int*) ;
 int match_octal (int *,int*) ;
 int match_token (char*,int ,int *) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int uid_valid (int ) ;

__attribute__((used)) static int parse_options(struct super_block *sb, struct adfs_sb_info *asb,
    char *options)
{
 char *p;
 int option;

 if (!options)
  return 0;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  substring_t args[MAX_OPT_ARGS];
  int token;
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 128:
   if (match_int(args, &option))
    return -EINVAL;
   asb->s_uid = make_kuid(current_user_ns(), option);
   if (!uid_valid(asb->s_uid))
    return -EINVAL;
   break;
  case 131:
   if (match_int(args, &option))
    return -EINVAL;
   asb->s_gid = make_kgid(current_user_ns(), option);
   if (!gid_valid(asb->s_gid))
    return -EINVAL;
   break;
  case 129:
   if (match_octal(args, &option))
    return -EINVAL;
   asb->s_owner_mask = option;
   break;
  case 130:
   if (match_octal(args, &option))
    return -EINVAL;
   asb->s_other_mask = option;
   break;
  case 132:
   if (match_int(args, &option))
    return -EINVAL;
   asb->s_ftsuffix = option;
   break;
  default:
   adfs_msg(sb, KERN_ERR,
     "unrecognised mount option \"%s\" or missing value",
     p);
   return -EINVAL;
  }
 }
 return 0;
}
