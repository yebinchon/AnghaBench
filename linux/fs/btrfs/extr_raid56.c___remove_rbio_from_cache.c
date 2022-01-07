
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_stripe_hash_table {int cache_size; struct btrfs_stripe_hash* table; } ;
struct btrfs_stripe_hash {int lock; } ;
struct btrfs_raid_bio {int bio_list_lock; int plug_list; int refs; int hash_list; int bio_list; int stripe_cache; int flags; TYPE_1__* fs_info; } ;
struct TYPE_2__ {struct btrfs_stripe_hash_table* stripe_hash_table; } ;


 int BUG_ON (int) ;
 int RBIO_CACHE_BIT ;
 int __free_raid_bio (struct btrfs_raid_bio*) ;
 scalar_t__ bio_list_empty (int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int rbio_bucket (struct btrfs_raid_bio*) ;
 int refcount_dec (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void __remove_rbio_from_cache(struct btrfs_raid_bio *rbio)
{
 int bucket = rbio_bucket(rbio);
 struct btrfs_stripe_hash_table *table;
 struct btrfs_stripe_hash *h;
 int freeit = 0;




 if (!test_bit(RBIO_CACHE_BIT, &rbio->flags))
  return;

 table = rbio->fs_info->stripe_hash_table;
 h = table->table + bucket;




 spin_lock(&h->lock);





 spin_lock(&rbio->bio_list_lock);

 if (test_and_clear_bit(RBIO_CACHE_BIT, &rbio->flags)) {
  list_del_init(&rbio->stripe_cache);
  table->cache_size -= 1;
  freeit = 1;
  if (bio_list_empty(&rbio->bio_list)) {
   if (!list_empty(&rbio->hash_list)) {
    list_del_init(&rbio->hash_list);
    refcount_dec(&rbio->refs);
    BUG_ON(!list_empty(&rbio->plug_list));
   }
  }
 }

 spin_unlock(&rbio->bio_list_lock);
 spin_unlock(&h->lock);

 if (freeit)
  __free_raid_bio(rbio);
}
