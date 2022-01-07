
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int substring_t ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;


 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int match_token (char*,int ,int *) ;
 int match_u64 (int *,int*) ;
 int opt_tokens ;
 int pr_warn (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
fcloop_parse_nm_options(struct device *dev, u64 *nname, u64 *pname,
  const char *buf)
{
 substring_t args[MAX_OPT_ARGS];
 char *options, *o, *p;
 int token, ret = 0;
 u64 token64;

 *nname = -1;
 *pname = -1;

 options = o = kstrdup(buf, GFP_KERNEL);
 if (!options)
  return -ENOMEM;

 while ((p = strsep(&o, ",\n")) != ((void*)0)) {
  if (!*p)
   continue;

  token = match_token(p, opt_tokens, args);
  switch (token) {
  case 129:
   if (match_u64(args, &token64)) {
    ret = -EINVAL;
    goto out_free_options;
   }
   *nname = token64;
   break;
  case 128:
   if (match_u64(args, &token64)) {
    ret = -EINVAL;
    goto out_free_options;
   }
   *pname = token64;
   break;
  default:
   pr_warn("unknown parameter or missing value '%s'\n", p);
   ret = -EINVAL;
   goto out_free_options;
  }
 }

out_free_options:
 kfree(options);

 if (!ret) {
  if (*nname == -1)
   return -EINVAL;
  if (*pname == -1)
   return -EINVAL;
 }

 return ret;
}
