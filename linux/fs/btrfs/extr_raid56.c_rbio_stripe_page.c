
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct btrfs_raid_bio {struct page** stripe_pages; } ;


 size_t rbio_stripe_page_index (struct btrfs_raid_bio*,int,int) ;

__attribute__((used)) static struct page *rbio_stripe_page(struct btrfs_raid_bio *rbio, int stripe,
         int index)
{
 return rbio->stripe_pages[rbio_stripe_page_index(rbio, stripe, index)];
}
