
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_raid_bio {int dummy; } ;


 int lock_stripe_add (struct btrfs_raid_bio*) ;
 int scrub_parity_work ;
 int start_async_work (struct btrfs_raid_bio*,int ) ;

void raid56_parity_submit_scrub_rbio(struct btrfs_raid_bio *rbio)
{
 if (!lock_stripe_add(rbio))
  start_async_work(rbio, scrub_parity_work);
}
