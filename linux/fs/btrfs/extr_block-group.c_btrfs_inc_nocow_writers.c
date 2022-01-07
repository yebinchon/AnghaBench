
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int lock; int nocow_writers; scalar_t__ ro; } ;


 int atomic_inc (int *) ;
 struct btrfs_block_group_cache* btrfs_lookup_block_group (struct btrfs_fs_info*,int ) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool btrfs_inc_nocow_writers(struct btrfs_fs_info *fs_info, u64 bytenr)
{
 struct btrfs_block_group_cache *bg;
 bool ret = 1;

 bg = btrfs_lookup_block_group(fs_info, bytenr);
 if (!bg)
  return 0;

 spin_lock(&bg->lock);
 if (bg->ro)
  ret = 0;
 else
  atomic_inc(&bg->nocow_writers);
 spin_unlock(&bg->lock);


 if (!ret)
  btrfs_put_block_group(bg);

 return ret;
}
