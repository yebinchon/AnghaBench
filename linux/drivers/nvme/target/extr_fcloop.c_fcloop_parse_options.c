
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
typedef int substring_t ;
struct fcloop_ctrl_options {int mask; int roles; int fcaddr; void* lpwwpn; void* lpwwnn; void* wwpn; void* wwnn; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;






 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int match_hex (int *,int*) ;
 int match_int (int *,int*) ;
 int match_token (char*,int ,int *) ;
 int match_u64 (int *,void**) ;
 int opt_tokens ;
 int pr_warn (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
fcloop_parse_options(struct fcloop_ctrl_options *opts,
  const char *buf)
{
 substring_t args[MAX_OPT_ARGS];
 char *options, *o, *p;
 int token, ret = 0;
 u64 token64;

 options = o = kstrdup(buf, GFP_KERNEL);
 if (!options)
  return -ENOMEM;

 while ((p = strsep(&o, ",\n")) != ((void*)0)) {
  if (!*p)
   continue;

  token = match_token(p, opt_tokens, args);
  opts->mask |= token;
  switch (token) {
  case 129:
   if (match_u64(args, &token64)) {
    ret = -EINVAL;
    goto out_free_options;
   }
   opts->wwnn = token64;
   break;
  case 128:
   if (match_u64(args, &token64)) {
    ret = -EINVAL;
    goto out_free_options;
   }
   opts->wwpn = token64;
   break;
  case 130:
   if (match_int(args, &token)) {
    ret = -EINVAL;
    goto out_free_options;
   }
   opts->roles = token;
   break;
  case 133:
   if (match_hex(args, &token)) {
    ret = -EINVAL;
    goto out_free_options;
   }
   opts->fcaddr = token;
   break;
  case 132:
   if (match_u64(args, &token64)) {
    ret = -EINVAL;
    goto out_free_options;
   }
   opts->lpwwnn = token64;
   break;
  case 131:
   if (match_u64(args, &token64)) {
    ret = -EINVAL;
    goto out_free_options;
   }
   opts->lpwwpn = token64;
   break;
  default:
   pr_warn("unknown parameter or missing value '%s'\n", p);
   ret = -EINVAL;
   goto out_free_options;
  }
 }

out_free_options:
 kfree(options);
 return ret;
}
