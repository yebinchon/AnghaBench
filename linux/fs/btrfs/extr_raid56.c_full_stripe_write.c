
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_raid_bio {int dummy; } ;


 int __free_raid_bio (struct btrfs_raid_bio*) ;
 int alloc_rbio_parity_pages (struct btrfs_raid_bio*) ;
 int finish_rmw (struct btrfs_raid_bio*) ;
 int lock_stripe_add (struct btrfs_raid_bio*) ;

__attribute__((used)) static int full_stripe_write(struct btrfs_raid_bio *rbio)
{
 int ret;

 ret = alloc_rbio_parity_pages(rbio);
 if (ret) {
  __free_raid_bio(rbio);
  return ret;
 }

 ret = lock_stripe_add(rbio);
 if (ret == 0)
  finish_rmw(rbio);
 return 0;
}
