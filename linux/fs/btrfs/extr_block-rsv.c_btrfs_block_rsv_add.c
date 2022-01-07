
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_root {int dummy; } ;
struct btrfs_block_rsv {int dummy; } ;
typedef enum btrfs_reserve_flush_enum { ____Placeholder_btrfs_reserve_flush_enum } btrfs_reserve_flush_enum ;


 int btrfs_block_rsv_add_bytes (struct btrfs_block_rsv*,scalar_t__,int) ;
 int btrfs_reserve_metadata_bytes (struct btrfs_root*,struct btrfs_block_rsv*,scalar_t__,int) ;

int btrfs_block_rsv_add(struct btrfs_root *root,
   struct btrfs_block_rsv *block_rsv, u64 num_bytes,
   enum btrfs_reserve_flush_enum flush)
{
 int ret;

 if (num_bytes == 0)
  return 0;

 ret = btrfs_reserve_metadata_bytes(root, block_rsv, num_bytes, flush);
 if (!ret)
  btrfs_block_rsv_add_bytes(block_rsv, num_bytes, 1);

 return ret;
}
