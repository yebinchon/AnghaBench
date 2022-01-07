
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_rsv {int dummy; } ;


 int __btrfs_block_rsv_release (struct btrfs_fs_info*,struct btrfs_block_rsv*,int ,int *) ;

__attribute__((used)) static inline void btrfs_block_rsv_release(struct btrfs_fs_info *fs_info,
        struct btrfs_block_rsv *block_rsv,
        u64 num_bytes)
{
 __btrfs_block_rsv_release(fs_info, block_rsv, num_bytes, ((void*)0));
}
