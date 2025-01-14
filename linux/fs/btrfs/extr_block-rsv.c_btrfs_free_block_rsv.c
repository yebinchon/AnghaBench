
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_rsv {int dummy; } ;


 int btrfs_block_rsv_release (struct btrfs_fs_info*,struct btrfs_block_rsv*,int ) ;
 int kfree (struct btrfs_block_rsv*) ;

void btrfs_free_block_rsv(struct btrfs_fs_info *fs_info,
     struct btrfs_block_rsv *rsv)
{
 if (!rsv)
  return;
 btrfs_block_rsv_release(fs_info, rsv, (u64)-1);
 kfree(rsv);
}
