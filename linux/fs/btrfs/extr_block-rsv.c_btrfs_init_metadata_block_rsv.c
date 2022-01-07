
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_rsv {int space_info; } ;


 int BTRFS_BLOCK_GROUP_METADATA ;
 int btrfs_find_space_info (struct btrfs_fs_info*,int ) ;
 int btrfs_init_block_rsv (struct btrfs_block_rsv*,unsigned short) ;

void btrfs_init_metadata_block_rsv(struct btrfs_fs_info *fs_info,
       struct btrfs_block_rsv *rsv,
       unsigned short type)
{
 btrfs_init_block_rsv(rsv, type);
 rsv->space_info = btrfs_find_space_info(fs_info,
         BTRFS_BLOCK_GROUP_METADATA);
}
