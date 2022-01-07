
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_dio_private {int bytes; int logical_offset; int inode; struct bio* dio_bio; } ;
struct bio {scalar_t__ bi_status; struct btrfs_dio_private* bi_private; } ;


 int __endio_write_update_ordered (int ,int ,int ,int) ;
 int bio_put (struct bio*) ;
 int dio_end_io (struct bio*) ;
 int kfree (struct btrfs_dio_private*) ;

__attribute__((used)) static void btrfs_endio_direct_write(struct bio *bio)
{
 struct btrfs_dio_private *dip = bio->bi_private;
 struct bio *dio_bio = dip->dio_bio;

 __endio_write_update_ordered(dip->inode, dip->logical_offset,
         dip->bytes, !bio->bi_status);

 kfree(dip);

 dio_bio->bi_status = bio->bi_status;
 dio_end_io(dio_bio);
 bio_put(bio);
}
