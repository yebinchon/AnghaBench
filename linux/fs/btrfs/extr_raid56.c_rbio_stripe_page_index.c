
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_raid_bio {int stripe_npages; } ;



__attribute__((used)) static int rbio_stripe_page_index(struct btrfs_raid_bio *rbio, int stripe,
      int index)
{
 return stripe * rbio->stripe_npages + index;
}
