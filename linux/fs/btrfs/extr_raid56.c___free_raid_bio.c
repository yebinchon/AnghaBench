
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_raid_bio {int nr_pages; int bbio; int ** stripe_pages; int bio_list; int hash_list; int stripe_cache; int refs; } ;


 int WARN_ON (int) ;
 int __free_page (int *) ;
 int bio_list_empty (int *) ;
 int btrfs_put_bbio (int ) ;
 int kfree (struct btrfs_raid_bio*) ;
 int list_empty (int *) ;
 int refcount_dec_and_test (int *) ;

__attribute__((used)) static void __free_raid_bio(struct btrfs_raid_bio *rbio)
{
 int i;

 if (!refcount_dec_and_test(&rbio->refs))
  return;

 WARN_ON(!list_empty(&rbio->stripe_cache));
 WARN_ON(!list_empty(&rbio->hash_list));
 WARN_ON(!bio_list_empty(&rbio->bio_list));

 for (i = 0; i < rbio->nr_pages; i++) {
  if (rbio->stripe_pages[i]) {
   __free_page(rbio->stripe_pages[i]);
   rbio->stripe_pages[i] = ((void*)0);
  }
 }

 btrfs_put_bbio(rbio->bbio);
 kfree(rbio);
}
