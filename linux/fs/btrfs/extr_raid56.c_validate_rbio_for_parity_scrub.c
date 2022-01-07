
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_raid_bio {scalar_t__ faila; scalar_t__ failb; int scrubp; TYPE_1__* bbio; int error; } ;
struct TYPE_2__ {scalar_t__ max_errors; } ;


 int BLK_STS_IOERR ;
 int __raid_recover_end_io (struct btrfs_raid_bio*) ;
 scalar_t__ atomic_read (int *) ;
 int finish_parity_scrub (struct btrfs_raid_bio*,int) ;
 scalar_t__ is_data_stripe (struct btrfs_raid_bio*,scalar_t__) ;
 scalar_t__ is_parity_stripe (scalar_t__) ;
 int rbio_orig_end_io (struct btrfs_raid_bio*,int ) ;

__attribute__((used)) static void validate_rbio_for_parity_scrub(struct btrfs_raid_bio *rbio)
{
 if (atomic_read(&rbio->error) > rbio->bbio->max_errors)
  goto cleanup;

 if (rbio->faila >= 0 || rbio->failb >= 0) {
  int dfail = 0, failp = -1;

  if (is_data_stripe(rbio, rbio->faila))
   dfail++;
  else if (is_parity_stripe(rbio->faila))
   failp = rbio->faila;

  if (is_data_stripe(rbio, rbio->failb))
   dfail++;
  else if (is_parity_stripe(rbio->failb))
   failp = rbio->failb;






  if (dfail > rbio->bbio->max_errors - 1)
   goto cleanup;





  if (dfail == 0) {
   finish_parity_scrub(rbio, 0);
   return;
  }







  if (failp != rbio->scrubp)
   goto cleanup;

  __raid_recover_end_io(rbio);
 } else {
  finish_parity_scrub(rbio, 1);
 }
 return;

cleanup:
 rbio_orig_end_io(rbio, BLK_STS_IOERR);
}
