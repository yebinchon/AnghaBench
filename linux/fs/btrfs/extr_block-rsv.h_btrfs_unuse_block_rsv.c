
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_rsv {int dummy; } ;


 int btrfs_block_rsv_add_bytes (struct btrfs_block_rsv*,int ,int) ;
 int btrfs_block_rsv_release (struct btrfs_fs_info*,struct btrfs_block_rsv*,int ) ;

__attribute__((used)) static inline void btrfs_unuse_block_rsv(struct btrfs_fs_info *fs_info,
      struct btrfs_block_rsv *block_rsv,
      u32 blocksize)
{
 btrfs_block_rsv_add_bytes(block_rsv, blocksize, 0);
 btrfs_block_rsv_release(fs_info, block_rsv, 0);
}
