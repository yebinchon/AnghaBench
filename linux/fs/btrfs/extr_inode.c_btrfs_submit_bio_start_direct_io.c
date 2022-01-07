
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct bio {int dummy; } ;
typedef int blk_status_t ;


 int BUG_ON (int ) ;
 int btrfs_csum_one_bio (struct inode*,struct bio*,int ,int) ;

__attribute__((used)) static blk_status_t btrfs_submit_bio_start_direct_io(void *private_data,
        struct bio *bio, u64 offset)
{
 struct inode *inode = private_data;
 blk_status_t ret;
 ret = btrfs_csum_one_bio(inode, bio, offset, 1);
 BUG_ON(ret);
 return 0;
}
