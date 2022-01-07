
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_raid_bio {int nr_data; int real_stripes; int scrubp; int stripe_npages; int generic_bio_cnt; int dbitmap; int operation; int bio_list; } ;
struct btrfs_fs_info {scalar_t__ sectorsize; } ;
struct btrfs_device {int dummy; } ;
struct btrfs_bio {TYPE_2__* stripes; } ;
struct TYPE_3__ {int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;
struct TYPE_4__ {struct btrfs_device* dev; } ;


 int ASSERT (int) ;
 int BTRFS_RBIO_PARITY_SCRUB ;
 scalar_t__ IS_ERR (struct btrfs_raid_bio*) ;
 scalar_t__ PAGE_SIZE ;
 struct btrfs_raid_bio* alloc_rbio (struct btrfs_fs_info*,struct btrfs_bio*,int ) ;
 int bio_list_add (int *,struct bio*) ;
 int bitmap_copy (int ,unsigned long*,int) ;

struct btrfs_raid_bio *
raid56_parity_alloc_scrub_rbio(struct btrfs_fs_info *fs_info, struct bio *bio,
          struct btrfs_bio *bbio, u64 stripe_len,
          struct btrfs_device *scrub_dev,
          unsigned long *dbitmap, int stripe_nsectors)
{
 struct btrfs_raid_bio *rbio;
 int i;

 rbio = alloc_rbio(fs_info, bbio, stripe_len);
 if (IS_ERR(rbio))
  return ((void*)0);
 bio_list_add(&rbio->bio_list, bio);




 ASSERT(!bio->bi_iter.bi_size);
 rbio->operation = BTRFS_RBIO_PARITY_SCRUB;






 for (i = rbio->nr_data; i < rbio->real_stripes; i++) {
  if (bbio->stripes[i].dev == scrub_dev) {
   rbio->scrubp = i;
   break;
  }
 }
 ASSERT(i < rbio->real_stripes);


 ASSERT(fs_info->sectorsize == PAGE_SIZE);
 ASSERT(rbio->stripe_npages == stripe_nsectors);
 bitmap_copy(rbio->dbitmap, dbitmap, stripe_nsectors);





 rbio->generic_bio_cnt = 1;

 return rbio;
}
