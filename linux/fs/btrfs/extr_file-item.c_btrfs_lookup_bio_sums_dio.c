
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct bio {int dummy; } ;
typedef int blk_status_t ;


 int __btrfs_lookup_bio_sums (struct inode*,struct bio*,int ,int *,int) ;

blk_status_t btrfs_lookup_bio_sums_dio(struct inode *inode, struct bio *bio, u64 offset)
{
 return __btrfs_lookup_bio_sums(inode, bio, offset, ((void*)0), 1);
}
