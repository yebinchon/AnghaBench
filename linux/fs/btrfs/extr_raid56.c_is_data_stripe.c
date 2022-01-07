
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_raid_bio {int nr_data; } ;



__attribute__((used)) static inline int is_data_stripe(struct btrfs_raid_bio *rbio, int stripe)
{
 if (stripe >= 0 && stripe < rbio->nr_data)
  return 1;
 return 0;
}
