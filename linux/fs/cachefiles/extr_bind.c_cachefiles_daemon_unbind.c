
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int identifier; } ;
struct cachefiles_cache {int tag; int secctx; int rootdirname; int mnt; int graveyard; TYPE_1__ cache; int flags; } ;


 int CACHEFILES_READY ;
 int _enter (char*) ;
 int _leave (char*) ;
 int dput (int ) ;
 int fscache_withdraw_cache (TYPE_1__*) ;
 int kfree (int ) ;
 int mntput (int ) ;
 int pr_info (char*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

void cachefiles_daemon_unbind(struct cachefiles_cache *cache)
{
 _enter("");

 if (test_bit(CACHEFILES_READY, &cache->flags)) {
  pr_info("File cache on %s unregistering\n",
   cache->cache.identifier);

  fscache_withdraw_cache(&cache->cache);
 }

 dput(cache->graveyard);
 mntput(cache->mnt);

 kfree(cache->rootdirname);
 kfree(cache->secctx);
 kfree(cache->tag);

 _leave("");
}
