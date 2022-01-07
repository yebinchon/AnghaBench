
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backref_cache {int leaves; int detached; int changed; int * pending; int rb_root; } ;


 int BTRFS_MAX_LEVEL ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;

__attribute__((used)) static void backref_cache_init(struct backref_cache *cache)
{
 int i;
 cache->rb_root = RB_ROOT;
 for (i = 0; i < BTRFS_MAX_LEVEL; i++)
  INIT_LIST_HEAD(&cache->pending[i]);
 INIT_LIST_HEAD(&cache->changed);
 INIT_LIST_HEAD(&cache->detached);
 INIT_LIST_HEAD(&cache->leaves);
}
