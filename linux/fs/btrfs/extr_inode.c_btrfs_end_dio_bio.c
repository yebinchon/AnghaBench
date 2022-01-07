
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct btrfs_dio_private {int errors; int orig_bio; TYPE_3__* dio_bio; int pending_bios; int inode; scalar_t__ (* subio_endio ) (int ,int ,scalar_t__) ;} ;
struct TYPE_7__ {int bi_size; scalar_t__ bi_sector; } ;
struct bio {TYPE_2__ bi_iter; int bi_opf; scalar_t__ bi_status; struct btrfs_dio_private* bi_private; } ;
typedef scalar_t__ blk_status_t ;
struct TYPE_9__ {TYPE_1__* root; } ;
struct TYPE_8__ {int bi_status; } ;
struct TYPE_6__ {int fs_info; } ;


 int BLK_STS_OK ;
 TYPE_4__* BTRFS_I (int ) ;
 int atomic_dec_and_test (int *) ;
 int bio_endio (int ) ;
 int bio_io_error (int ) ;
 int bio_op (struct bio*) ;
 int bio_put (struct bio*) ;
 int btrfs_ino (TYPE_4__*) ;
 int btrfs_io_bio (struct bio*) ;
 int btrfs_warn (int ,char*,int ,int ,int ,unsigned long long,int ,scalar_t__) ;
 scalar_t__ stub1 (int ,int ,scalar_t__) ;

__attribute__((used)) static void btrfs_end_dio_bio(struct bio *bio)
{
 struct btrfs_dio_private *dip = bio->bi_private;
 blk_status_t err = bio->bi_status;

 if (err)
  btrfs_warn(BTRFS_I(dip->inode)->root->fs_info,
      "direct IO failed ino %llu rw %d,%u sector %#Lx len %u err no %d",
      btrfs_ino(BTRFS_I(dip->inode)), bio_op(bio),
      bio->bi_opf,
      (unsigned long long)bio->bi_iter.bi_sector,
      bio->bi_iter.bi_size, err);

 if (dip->subio_endio)
  err = dip->subio_endio(dip->inode, btrfs_io_bio(bio), err);

 if (err) {






  dip->errors = 1;
 }


 if (!atomic_dec_and_test(&dip->pending_bios))
  goto out;

 if (dip->errors) {
  bio_io_error(dip->orig_bio);
 } else {
  dip->dio_bio->bi_status = BLK_STS_OK;
  bio_endio(dip->orig_bio);
 }
out:
 bio_put(bio);
}
