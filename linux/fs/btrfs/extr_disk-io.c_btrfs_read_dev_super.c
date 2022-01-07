
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct buffer_head {scalar_t__ b_data; } ;
struct btrfs_super_block {int dummy; } ;
struct block_device {int dummy; } ;


 int EINVAL ;
 struct buffer_head* ERR_PTR (int) ;
 int brelse (struct buffer_head*) ;
 int btrfs_read_dev_one_super (struct block_device*,int,struct buffer_head**) ;
 scalar_t__ btrfs_super_generation (struct btrfs_super_block*) ;

struct buffer_head *btrfs_read_dev_super(struct block_device *bdev)
{
 struct buffer_head *bh;
 struct buffer_head *latest = ((void*)0);
 struct btrfs_super_block *super;
 int i;
 u64 transid = 0;
 int ret = -EINVAL;






 for (i = 0; i < 1; i++) {
  ret = btrfs_read_dev_one_super(bdev, i, &bh);
  if (ret)
   continue;

  super = (struct btrfs_super_block *)bh->b_data;

  if (!latest || btrfs_super_generation(super) > transid) {
   brelse(latest);
   latest = bh;
   transid = btrfs_super_generation(super);
  } else {
   brelse(bh);
  }
 }

 if (!latest)
  return ERR_PTR(ret);

 return latest;
}
