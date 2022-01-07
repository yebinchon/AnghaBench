
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct btrfs_raid_bio {scalar_t__ nr_data; scalar_t__ real_stripes; } ;


 struct page* rbio_stripe_page (struct btrfs_raid_bio*,scalar_t__,int) ;

__attribute__((used)) static struct page *rbio_qstripe_page(struct btrfs_raid_bio *rbio, int index)
{
 if (rbio->nr_data + 1 == rbio->real_stripes)
  return ((void*)0);
 return rbio_stripe_page(rbio, rbio->nr_data + 1, index);
}
