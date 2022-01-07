
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct inode {TYPE_1__* i_sb; } ;
struct btrfs_io_bio {int * csum; } ;
struct btrfs_dio_private {scalar_t__ logical_offset; struct bio* orig_bio; } ;
struct bio {int dummy; } ;
typedef scalar_t__ blk_status_t ;
struct TYPE_2__ {scalar_t__ s_blocksize_bits; } ;


 struct btrfs_io_bio* btrfs_io_bio (struct bio*) ;
 scalar_t__ btrfs_lookup_bio_sums_dio (struct inode*,struct bio*,scalar_t__) ;

__attribute__((used)) static inline blk_status_t btrfs_lookup_and_bind_dio_csum(struct inode *inode,
       struct btrfs_dio_private *dip,
       struct bio *bio,
       u64 file_offset)
{
 struct btrfs_io_bio *io_bio = btrfs_io_bio(bio);
 struct btrfs_io_bio *orig_io_bio = btrfs_io_bio(dip->orig_bio);
 blk_status_t ret;






 if (dip->logical_offset == file_offset) {
  ret = btrfs_lookup_bio_sums_dio(inode, dip->orig_bio,
      file_offset);
  if (ret)
   return ret;
 }

 if (bio == dip->orig_bio)
  return 0;

 file_offset -= dip->logical_offset;
 file_offset >>= inode->i_sb->s_blocksize_bits;
 io_bio->csum = (u8 *)(((u32 *)orig_io_bio->csum) + file_offset);

 return 0;
}
