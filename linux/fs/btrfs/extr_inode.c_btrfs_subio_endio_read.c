
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct btrfs_io_bio {int dummy; } ;
typedef int blk_status_t ;
struct TYPE_2__ {int flags; } ;


 int BLK_STS_OK ;
 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_NODATASUM ;
 int __btrfs_correct_data_nocsum (struct inode*,struct btrfs_io_bio*) ;
 int __btrfs_subio_endio_read (struct inode*,struct btrfs_io_bio*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static blk_status_t btrfs_subio_endio_read(struct inode *inode,
  struct btrfs_io_bio *io_bio, blk_status_t err)
{
 bool skip_csum = BTRFS_I(inode)->flags & BTRFS_INODE_NODATASUM;

 if (skip_csum) {
  if (unlikely(err))
   return __btrfs_correct_data_nocsum(inode, io_bio);
  else
   return BLK_STS_OK;
 } else {
  return __btrfs_subio_endio_read(inode, io_bio, err);
 }
}
