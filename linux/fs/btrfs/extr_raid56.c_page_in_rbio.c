
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct btrfs_raid_bio {int stripe_len; struct page** stripe_pages; int bio_list_lock; struct page** bio_pages; } ;


 int PAGE_SHIFT ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct page *page_in_rbio(struct btrfs_raid_bio *rbio,
     int index, int pagenr, int bio_list_only)
{
 int chunk_page;
 struct page *p = ((void*)0);

 chunk_page = index * (rbio->stripe_len >> PAGE_SHIFT) + pagenr;

 spin_lock_irq(&rbio->bio_list_lock);
 p = rbio->bio_pages[chunk_page];
 spin_unlock_irq(&rbio->bio_list_lock);

 if (p || bio_list_only)
  return p;

 return rbio->stripe_pages[chunk_page];
}
