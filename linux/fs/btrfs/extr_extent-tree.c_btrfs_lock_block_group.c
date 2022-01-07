
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_block_group_cache {int data_rwsem; } ;


 int down_read (int *) ;

__attribute__((used)) static inline void
btrfs_lock_block_group(struct btrfs_block_group_cache *cache,
         int delalloc)
{
 if (delalloc)
  down_read(&cache->data_rwsem);
}
