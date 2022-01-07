
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_raid_bio {int dummy; } ;


 int full_stripe_write (struct btrfs_raid_bio*) ;
 int partial_stripe_write (struct btrfs_raid_bio*) ;
 int rbio_is_full (struct btrfs_raid_bio*) ;

__attribute__((used)) static int __raid56_parity_write(struct btrfs_raid_bio *rbio)
{

 if (!rbio_is_full(rbio))
  return partial_stripe_write(rbio);
 return full_stripe_write(rbio);
}
