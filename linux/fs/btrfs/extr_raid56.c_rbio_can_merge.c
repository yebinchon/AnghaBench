
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_raid_bio {scalar_t__ operation; int faila; int failb; TYPE_1__* bbio; int flags; } ;
struct TYPE_2__ {scalar_t__* raid_map; } ;


 scalar_t__ BTRFS_RBIO_PARITY_SCRUB ;
 scalar_t__ BTRFS_RBIO_READ_REBUILD ;
 scalar_t__ BTRFS_RBIO_REBUILD_MISSING ;
 int RBIO_CACHE_BIT ;
 int RBIO_RMW_LOCKED_BIT ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int rbio_can_merge(struct btrfs_raid_bio *last,
     struct btrfs_raid_bio *cur)
{
 if (test_bit(RBIO_RMW_LOCKED_BIT, &last->flags) ||
     test_bit(RBIO_RMW_LOCKED_BIT, &cur->flags))
  return 0;
 if (test_bit(RBIO_CACHE_BIT, &last->flags) ||
     test_bit(RBIO_CACHE_BIT, &cur->flags))
  return 0;

 if (last->bbio->raid_map[0] !=
     cur->bbio->raid_map[0])
  return 0;


 if (last->operation != cur->operation)
  return 0;
 if (last->operation == BTRFS_RBIO_PARITY_SCRUB)
  return 0;

 if (last->operation == BTRFS_RBIO_REBUILD_MISSING)
  return 0;

 if (last->operation == BTRFS_RBIO_READ_REBUILD) {
  int fa = last->faila;
  int fb = last->failb;
  int cur_fa = cur->faila;
  int cur_fb = cur->failb;

  if (last->faila >= last->failb) {
   fa = last->failb;
   fb = last->faila;
  }

  if (cur->faila >= cur->failb) {
   cur_fa = cur->failb;
   cur_fb = cur->faila;
  }

  if (fa != cur_fa || fb != cur_fb)
   return 0;
 }
 return 1;
}
