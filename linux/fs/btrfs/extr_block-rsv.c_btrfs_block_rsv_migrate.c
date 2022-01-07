
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_block_rsv {int dummy; } ;


 int btrfs_block_rsv_add_bytes (struct btrfs_block_rsv*,int ,int) ;
 int btrfs_block_rsv_use_bytes (struct btrfs_block_rsv*,int ) ;

int btrfs_block_rsv_migrate(struct btrfs_block_rsv *src,
       struct btrfs_block_rsv *dst, u64 num_bytes,
       bool update_size)
{
 int ret;

 ret = btrfs_block_rsv_use_bytes(src, num_bytes);
 if (ret)
  return ret;

 btrfs_block_rsv_add_bytes(dst, num_bytes, update_size);
 return 0;
}
