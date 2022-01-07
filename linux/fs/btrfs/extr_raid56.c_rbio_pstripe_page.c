
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct btrfs_raid_bio {int nr_data; } ;


 struct page* rbio_stripe_page (struct btrfs_raid_bio*,int ,int) ;

__attribute__((used)) static struct page *rbio_pstripe_page(struct btrfs_raid_bio *rbio, int index)
{
 return rbio_stripe_page(rbio, rbio->nr_data, index);
}
