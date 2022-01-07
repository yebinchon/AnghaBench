
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct btrfs_fs_info {int dummy; } ;
struct bio {int dummy; } ;
typedef scalar_t__ blk_status_t ;


 int BTRFS_WQ_ENDIO_DIO_REPAIR ;
 int BUG_ON (int) ;
 scalar_t__ REQ_OP_WRITE ;
 scalar_t__ bio_op (struct bio*) ;
 scalar_t__ btrfs_bio_wq_end_io (struct btrfs_fs_info*,struct bio*,int ) ;
 scalar_t__ btrfs_map_bio (struct btrfs_fs_info*,struct bio*,int,int ) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;

__attribute__((used)) static inline blk_status_t submit_dio_repair_bio(struct inode *inode,
       struct bio *bio,
       int mirror_num)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 blk_status_t ret;

 BUG_ON(bio_op(bio) == REQ_OP_WRITE);

 ret = btrfs_bio_wq_end_io(fs_info, bio, BTRFS_WQ_ENDIO_DIO_REPAIR);
 if (ret)
  return ret;

 ret = btrfs_map_bio(fs_info, bio, mirror_num, 0);

 return ret;
}
