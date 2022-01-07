
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_block_rsv {int dummy; } ;
struct btrfs_fs_info {struct btrfs_block_rsv delayed_refs_rsv; } ;


 scalar_t__ __btrfs_block_rsv_release (struct btrfs_fs_info*,struct btrfs_block_rsv*,scalar_t__,int *) ;
 scalar_t__ btrfs_calc_insert_metadata_size (struct btrfs_fs_info*,int) ;
 int trace_btrfs_space_reservation (struct btrfs_fs_info*,char*,int ,scalar_t__,int ) ;

void btrfs_delayed_refs_rsv_release(struct btrfs_fs_info *fs_info, int nr)
{
 struct btrfs_block_rsv *block_rsv = &fs_info->delayed_refs_rsv;
 u64 num_bytes = btrfs_calc_insert_metadata_size(fs_info, nr);
 u64 released = 0;

 released = __btrfs_block_rsv_release(fs_info, block_rsv, num_bytes,
          ((void*)0));
 if (released)
  trace_btrfs_space_reservation(fs_info, "delayed_refs_rsv",
           0, released, 0);
}
