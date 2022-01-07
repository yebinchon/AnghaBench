
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_block_group_cache {int data_rwsem; } ;


 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int up_read (int *) ;

__attribute__((used)) static inline void
btrfs_release_block_group(struct btrfs_block_group_cache *cache,
    int delalloc)
{
 if (delalloc)
  up_read(&cache->data_rwsem);
 btrfs_put_block_group(cache);
}
