
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_stripe_hash_table {struct btrfs_stripe_hash* table; int stripe_cache; int cache_lock; } ;
struct btrfs_stripe_hash {int lock; int hash_list; } ;
struct btrfs_fs_info {scalar_t__ stripe_hash_table; } ;


 int BTRFS_STRIPE_HASH_TABLE_BITS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct btrfs_stripe_hash_table* cmpxchg (scalar_t__*,int *,struct btrfs_stripe_hash_table*) ;
 int kvfree (struct btrfs_stripe_hash_table*) ;
 struct btrfs_stripe_hash_table* kvzalloc (int,int ) ;
 int spin_lock_init (int *) ;

int btrfs_alloc_stripe_hash_table(struct btrfs_fs_info *info)
{
 struct btrfs_stripe_hash_table *table;
 struct btrfs_stripe_hash_table *x;
 struct btrfs_stripe_hash *cur;
 struct btrfs_stripe_hash *h;
 int num_entries = 1 << BTRFS_STRIPE_HASH_TABLE_BITS;
 int i;
 int table_size;

 if (info->stripe_hash_table)
  return 0;
 table_size = sizeof(*table) + sizeof(*h) * num_entries;
 table = kvzalloc(table_size, GFP_KERNEL);
 if (!table)
  return -ENOMEM;

 spin_lock_init(&table->cache_lock);
 INIT_LIST_HEAD(&table->stripe_cache);

 h = table->table;

 for (i = 0; i < num_entries; i++) {
  cur = h + i;
  INIT_LIST_HEAD(&cur->hash_list);
  spin_lock_init(&cur->lock);
 }

 x = cmpxchg(&info->stripe_hash_table, ((void*)0), table);
 if (x)
  kvfree(x);
 return 0;
}
