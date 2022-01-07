
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_stripe_hash_table {int cache_lock; } ;
struct btrfs_raid_bio {TYPE_1__* fs_info; int flags; } ;
struct TYPE_2__ {struct btrfs_stripe_hash_table* stripe_hash_table; } ;


 int RBIO_CACHE_BIT ;
 int __remove_rbio_from_cache (struct btrfs_raid_bio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void remove_rbio_from_cache(struct btrfs_raid_bio *rbio)
{
 struct btrfs_stripe_hash_table *table;
 unsigned long flags;

 if (!test_bit(RBIO_CACHE_BIT, &rbio->flags))
  return;

 table = rbio->fs_info->stripe_hash_table;

 spin_lock_irqsave(&table->cache_lock, flags);
 __remove_rbio_from_cache(rbio);
 spin_unlock_irqrestore(&table->cache_lock, flags);
}
