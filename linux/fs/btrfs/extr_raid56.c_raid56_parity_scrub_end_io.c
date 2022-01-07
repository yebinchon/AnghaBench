
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_raid_bio {int stripes_pending; } ;
struct bio {scalar_t__ bi_status; struct btrfs_raid_bio* bi_private; } ;


 int atomic_dec_and_test (int *) ;
 int bio_put (struct bio*) ;
 int fail_bio_stripe (struct btrfs_raid_bio*,struct bio*) ;
 int set_bio_pages_uptodate (struct bio*) ;
 int validate_rbio_for_parity_scrub (struct btrfs_raid_bio*) ;

__attribute__((used)) static void raid56_parity_scrub_end_io(struct bio *bio)
{
 struct btrfs_raid_bio *rbio = bio->bi_private;

 if (bio->bi_status)
  fail_bio_stripe(rbio, bio);
 else
  set_bio_pages_uptodate(bio);

 bio_put(bio);

 if (!atomic_dec_and_test(&rbio->stripes_pending))
  return;






 validate_rbio_for_parity_scrub(rbio);
}
