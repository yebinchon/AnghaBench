
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_raid_bio {TYPE_1__* bbio; int error; int stripes_pending; } ;
struct bio {scalar_t__ bi_status; struct btrfs_raid_bio* bi_private; } ;
struct TYPE_2__ {scalar_t__ max_errors; } ;


 int BLK_STS_IOERR ;
 int atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int bio_put (struct bio*) ;
 int fail_bio_stripe (struct btrfs_raid_bio*,struct bio*) ;
 int rbio_orig_end_io (struct btrfs_raid_bio*,int ) ;
 int set_bio_pages_uptodate (struct bio*) ;
 int validate_rbio_for_rmw (struct btrfs_raid_bio*) ;

__attribute__((used)) static void raid_rmw_end_io(struct bio *bio)
{
 struct btrfs_raid_bio *rbio = bio->bi_private;

 if (bio->bi_status)
  fail_bio_stripe(rbio, bio);
 else
  set_bio_pages_uptodate(bio);

 bio_put(bio);

 if (!atomic_dec_and_test(&rbio->stripes_pending))
  return;

 if (atomic_read(&rbio->error) > rbio->bbio->max_errors)
  goto cleanup;






 validate_rbio_for_rmw(rbio);
 return;

cleanup:

 rbio_orig_end_io(rbio, BLK_STS_IOERR);
}
