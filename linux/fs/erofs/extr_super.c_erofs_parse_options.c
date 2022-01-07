
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * from; int to; } ;
typedef TYPE_1__ substring_t ;
struct super_block {int dummy; } ;


 int EINVAL ;
 int EROFS_SB (struct super_block*) ;
 int MAX_OPT_ARGS ;





 int POSIX_ACL ;
 int XATTR_USER ;
 int clear_opt (int ,int ) ;
 int erofs_build_cache_strategy (struct super_block*,TYPE_1__*) ;
 int erofs_err (struct super_block*,char*,char*) ;
 int erofs_info (struct super_block*,char*) ;
 int erofs_tokens ;
 int match_token (char*,int ,TYPE_1__*) ;
 int set_opt (int ,int ) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int erofs_parse_options(struct super_block *sb, char *options)
{
 substring_t args[MAX_OPT_ARGS];
 char *p;
 int err;

 if (!options)
  return 0;

 while ((p = strsep(&options, ","))) {
  int token;

  if (!*p)
   continue;

  args[0].to = args[0].from = ((void*)0);
  token = match_token(p, erofs_tokens, args);

  switch (token) {
  case 128:
   erofs_info(sb, "user_xattr options not supported");
   break;
  case 129:
   erofs_info(sb, "nouser_xattr options not supported");
   break;
  case 132:
   erofs_info(sb, "acl options not supported");
   break;
  case 130:
   erofs_info(sb, "noacl options not supported");
   break;

  case 131:
   err = erofs_build_cache_strategy(sb, args);
   if (err)
    return err;
   break;
  default:
   erofs_err(sb, "Unrecognized mount option \"%s\" or missing value", p);
   return -EINVAL;
  }
 }
 return 0;
}
