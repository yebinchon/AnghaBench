
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_block_rsv {scalar_t__ space_info; int full; } ;
struct btrfs_fs_info {struct btrfs_block_rsv delayed_refs_rsv; struct btrfs_block_rsv global_block_rsv; } ;


 int block_rsv_release_bytes (struct btrfs_fs_info*,struct btrfs_block_rsv*,struct btrfs_block_rsv*,int ,int *) ;

u64 __btrfs_block_rsv_release(struct btrfs_fs_info *fs_info,
         struct btrfs_block_rsv *block_rsv,
         u64 num_bytes, u64 *qgroup_to_release)
{
 struct btrfs_block_rsv *global_rsv = &fs_info->global_block_rsv;
 struct btrfs_block_rsv *delayed_rsv = &fs_info->delayed_refs_rsv;
 struct btrfs_block_rsv *target = ((void*)0);





 if (block_rsv == delayed_rsv)
  target = global_rsv;
 else if (block_rsv != global_rsv && !delayed_rsv->full)
  target = delayed_rsv;

 if (target && block_rsv->space_info != target->space_info)
  target = ((void*)0);

 return block_rsv_release_bytes(fs_info, block_rsv, target, num_bytes,
           qgroup_to_release);
}
