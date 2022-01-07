
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_raid_bio {scalar_t__ operation; int error; TYPE_1__* bbio; int stripes_pending; } ;
struct bio {scalar_t__ bi_status; struct btrfs_raid_bio* bi_private; } ;
typedef scalar_t__ blk_status_t ;
struct TYPE_2__ {int max_errors; } ;


 scalar_t__ BLK_STS_IOERR ;
 scalar_t__ BLK_STS_OK ;
 scalar_t__ BTRFS_RBIO_PARITY_SCRUB ;
 int atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int bio_put (struct bio*) ;
 int fail_bio_stripe (struct btrfs_raid_bio*,struct bio*) ;
 int rbio_orig_end_io (struct btrfs_raid_bio*,scalar_t__) ;

__attribute__((used)) static void raid_write_end_io(struct bio *bio)
{
 struct btrfs_raid_bio *rbio = bio->bi_private;
 blk_status_t err = bio->bi_status;
 int max_errors;

 if (err)
  fail_bio_stripe(rbio, bio);

 bio_put(bio);

 if (!atomic_dec_and_test(&rbio->stripes_pending))
  return;

 err = BLK_STS_OK;


 max_errors = (rbio->operation == BTRFS_RBIO_PARITY_SCRUB) ?
       0 : rbio->bbio->max_errors;
 if (atomic_read(&rbio->error) > max_errors)
  err = BLK_STS_IOERR;

 rbio_orig_end_io(rbio, err);
}
