
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_raid_bio {int nr_data; int stripe_len; TYPE_2__* bbio; } ;
struct TYPE_3__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
struct TYPE_4__ {int* raid_map; } ;



__attribute__((used)) static int find_logical_bio_stripe(struct btrfs_raid_bio *rbio,
       struct bio *bio)
{
 u64 logical = bio->bi_iter.bi_sector;
 u64 stripe_start;
 int i;

 logical <<= 9;

 for (i = 0; i < rbio->nr_data; i++) {
  stripe_start = rbio->bbio->raid_map[i];
  if (logical >= stripe_start &&
      logical < stripe_start + rbio->stripe_len) {
   return i;
  }
 }
 return -1;
}
