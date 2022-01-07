
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;
struct cachefiles_cache {struct cred* cache_cred; int secctx; } ;


 int ENOMEM ;
 int _enter (char*,int ) ;
 int _leave (char*,int) ;
 int current ;
 int pr_err (char*,int) ;
 struct cred* prepare_kernel_cred (int ) ;
 int put_cred (struct cred*) ;
 int set_security_override_from_ctx (struct cred*,int ) ;

int cachefiles_get_security_ID(struct cachefiles_cache *cache)
{
 struct cred *new;
 int ret;

 _enter("{%s}", cache->secctx);

 new = prepare_kernel_cred(current);
 if (!new) {
  ret = -ENOMEM;
  goto error;
 }

 if (cache->secctx) {
  ret = set_security_override_from_ctx(new, cache->secctx);
  if (ret < 0) {
   put_cred(new);
   pr_err("Security denies permission to nominate security context: error %d\n",
          ret);
   goto error;
  }
 }

 cache->cache_cred = new;
 ret = 0;
error:
 _leave(" = %d", ret);
 return ret;
}
