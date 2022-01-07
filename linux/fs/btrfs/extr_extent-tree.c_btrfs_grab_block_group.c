
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_block_group_cache {int data_rwsem; } ;


 int btrfs_get_block_group (struct btrfs_block_group_cache*) ;
 int down_read (int *) ;

__attribute__((used)) static inline void
btrfs_grab_block_group(struct btrfs_block_group_cache *cache,
         int delalloc)
{
 btrfs_get_block_group(cache);
 if (delalloc)
  down_read(&cache->data_rwsem);
}
