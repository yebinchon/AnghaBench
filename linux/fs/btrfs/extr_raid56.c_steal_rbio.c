
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct btrfs_raid_bio {int nr_pages; struct page** stripe_pages; int flags; } ;


 int PageUptodate (struct page*) ;
 int RBIO_CACHE_READY_BIT ;
 int __free_page (struct page*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void steal_rbio(struct btrfs_raid_bio *src, struct btrfs_raid_bio *dest)
{
 int i;
 struct page *s;
 struct page *d;

 if (!test_bit(RBIO_CACHE_READY_BIT, &src->flags))
  return;

 for (i = 0; i < dest->nr_pages; i++) {
  s = src->stripe_pages[i];
  if (!s || !PageUptodate(s)) {
   continue;
  }

  d = dest->stripe_pages[i];
  if (d)
   __free_page(d);

  dest->stripe_pages[i] = s;
  src->stripe_pages[i] = ((void*)0);
 }
}
