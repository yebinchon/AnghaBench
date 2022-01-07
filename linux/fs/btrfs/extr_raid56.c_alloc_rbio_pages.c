
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct btrfs_raid_bio {int nr_pages; struct page** stripe_pages; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int __GFP_HIGHMEM ;
 struct page* alloc_page (int) ;

__attribute__((used)) static int alloc_rbio_pages(struct btrfs_raid_bio *rbio)
{
 int i;
 struct page *page;

 for (i = 0; i < rbio->nr_pages; i++) {
  if (rbio->stripe_pages[i])
   continue;
  page = alloc_page(GFP_NOFS | __GFP_HIGHMEM);
  if (!page)
   return -ENOMEM;
  rbio->stripe_pages[i] = page;
 }
 return 0;
}
