
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_rsv {int dummy; } ;


 int GFP_NOFS ;
 int btrfs_init_metadata_block_rsv (struct btrfs_fs_info*,struct btrfs_block_rsv*,unsigned short) ;
 struct btrfs_block_rsv* kmalloc (int,int ) ;

struct btrfs_block_rsv *btrfs_alloc_block_rsv(struct btrfs_fs_info *fs_info,
           unsigned short type)
{
 struct btrfs_block_rsv *block_rsv;

 block_rsv = kmalloc(sizeof(*block_rsv), GFP_NOFS);
 if (!block_rsv)
  return ((void*)0);

 btrfs_init_metadata_block_rsv(fs_info, block_rsv, type);
 return block_rsv;
}
