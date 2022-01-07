
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cachefiles_cache {scalar_t__ frun_percent; scalar_t__ fcull_percent; scalar_t__ fstop_percent; scalar_t__ brun_percent; scalar_t__ bcull_percent; scalar_t__ bstop_percent; scalar_t__ tag; int flags; int rootdirname; } ;


 int ASSERT (int) ;
 int CACHEFILES_READY ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int _enter (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,char*) ;
 int cachefiles_daemon_add_cache (struct cachefiles_cache*) ;
 scalar_t__ kstrdup (char*,int ) ;
 int pr_err (char*) ;
 scalar_t__ test_bit (int ,int *) ;

int cachefiles_daemon_bind(struct cachefiles_cache *cache, char *args)
{
 _enter("{%u,%u,%u,%u,%u,%u},%s",
        cache->frun_percent,
        cache->fcull_percent,
        cache->fstop_percent,
        cache->brun_percent,
        cache->bcull_percent,
        cache->bstop_percent,
        args);


 ASSERT(cache->fstop_percent >= 0 &&
        cache->fstop_percent < cache->fcull_percent &&
        cache->fcull_percent < cache->frun_percent &&
        cache->frun_percent < 100);

 ASSERT(cache->bstop_percent >= 0 &&
        cache->bstop_percent < cache->bcull_percent &&
        cache->bcull_percent < cache->brun_percent &&
        cache->brun_percent < 100);

 if (*args) {
  pr_err("'bind' command doesn't take an argument\n");
  return -EINVAL;
 }

 if (!cache->rootdirname) {
  pr_err("No cache directory specified\n");
  return -EINVAL;
 }


 if (test_bit(CACHEFILES_READY, &cache->flags)) {
  pr_err("Cache already bound\n");
  return -EBUSY;
 }


 if (!cache->tag) {


  cache->tag = kstrdup("CacheFiles", GFP_KERNEL);
  if (!cache->tag)
   return -ENOMEM;
 }


 return cachefiles_daemon_add_cache(cache);
}
