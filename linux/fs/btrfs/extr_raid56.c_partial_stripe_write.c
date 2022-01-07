
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_raid_bio {int dummy; } ;


 int lock_stripe_add (struct btrfs_raid_bio*) ;
 int rmw_work ;
 int start_async_work (struct btrfs_raid_bio*,int ) ;

__attribute__((used)) static int partial_stripe_write(struct btrfs_raid_bio *rbio)
{
 int ret;

 ret = lock_stripe_add(rbio);
 if (ret == 0)
  start_async_work(rbio, rmw_work);
 return 0;
}
