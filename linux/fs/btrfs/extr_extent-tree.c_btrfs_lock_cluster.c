
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_free_cluster {struct btrfs_block_group_cache* block_group; int refill_lock; } ;
struct btrfs_block_group_cache {int data_rwsem; } ;


 int SINGLE_DEPTH_NESTING ;
 int btrfs_get_block_group (struct btrfs_block_group_cache*) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int down_read_nested (int *,int ) ;
 scalar_t__ down_read_trylock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;

__attribute__((used)) static struct btrfs_block_group_cache *
btrfs_lock_cluster(struct btrfs_block_group_cache *block_group,
     struct btrfs_free_cluster *cluster,
     int delalloc)
{
 struct btrfs_block_group_cache *used_bg = ((void*)0);

 spin_lock(&cluster->refill_lock);
 while (1) {
  used_bg = cluster->block_group;
  if (!used_bg)
   return ((void*)0);

  if (used_bg == block_group)
   return used_bg;

  btrfs_get_block_group(used_bg);

  if (!delalloc)
   return used_bg;

  if (down_read_trylock(&used_bg->data_rwsem))
   return used_bg;

  spin_unlock(&cluster->refill_lock);


  down_read_nested(&used_bg->data_rwsem, SINGLE_DEPTH_NESTING);

  spin_lock(&cluster->refill_lock);
  if (used_bg == cluster->block_group)
   return used_bg;

  up_read(&used_bg->data_rwsem);
  btrfs_put_block_group(used_bg);
 }
}
