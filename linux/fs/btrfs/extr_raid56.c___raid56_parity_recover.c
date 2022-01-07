
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct btrfs_raid_bio {int real_stripes; int faila; int failb; int stripe_npages; scalar_t__ operation; int fs_info; int stripes_pending; TYPE_1__* bbio; int error; int stripe_len; } ;
struct bio_list {int dummy; } ;
struct bio {int bi_opf; int bi_end_io; struct btrfs_raid_bio* bi_private; } ;
struct TYPE_2__ {scalar_t__ max_errors; } ;


 int BLK_STS_IOERR ;
 scalar_t__ BTRFS_RBIO_READ_REBUILD ;
 scalar_t__ BTRFS_RBIO_REBUILD_MISSING ;
 int BTRFS_WQ_ENDIO_RAID56 ;
 int EIO ;
 scalar_t__ PageUptodate (struct page*) ;
 int REQ_OP_READ ;
 int __raid_recover_end_io (struct btrfs_raid_bio*) ;
 int alloc_rbio_pages (struct btrfs_raid_bio*) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int bio_list_init (struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 int bio_list_size (struct bio_list*) ;
 int bio_put (struct bio*) ;
 int btrfs_bio_wq_end_io (int ,struct bio*,int ) ;
 int raid_recover_end_io ;
 int rbio_add_io_page (struct btrfs_raid_bio*,struct bio_list*,struct page*,int,int,int ) ;
 int rbio_orig_end_io (struct btrfs_raid_bio*,int ) ;
 struct page* rbio_stripe_page (struct btrfs_raid_bio*,int,int) ;
 int submit_bio (struct bio*) ;

__attribute__((used)) static int __raid56_parity_recover(struct btrfs_raid_bio *rbio)
{
 int bios_to_read = 0;
 struct bio_list bio_list;
 int ret;
 int pagenr;
 int stripe;
 struct bio *bio;

 bio_list_init(&bio_list);

 ret = alloc_rbio_pages(rbio);
 if (ret)
  goto cleanup;

 atomic_set(&rbio->error, 0);






 for (stripe = 0; stripe < rbio->real_stripes; stripe++) {
  if (rbio->faila == stripe || rbio->failb == stripe) {
   atomic_inc(&rbio->error);
   continue;
  }

  for (pagenr = 0; pagenr < rbio->stripe_npages; pagenr++) {
   struct page *p;





   p = rbio_stripe_page(rbio, stripe, pagenr);
   if (PageUptodate(p))
    continue;

   ret = rbio_add_io_page(rbio, &bio_list,
           rbio_stripe_page(rbio, stripe, pagenr),
           stripe, pagenr, rbio->stripe_len);
   if (ret < 0)
    goto cleanup;
  }
 }

 bios_to_read = bio_list_size(&bio_list);
 if (!bios_to_read) {





  if (atomic_read(&rbio->error) <= rbio->bbio->max_errors) {
   __raid_recover_end_io(rbio);
   goto out;
  } else {
   goto cleanup;
  }
 }





 atomic_set(&rbio->stripes_pending, bios_to_read);
 while (1) {
  bio = bio_list_pop(&bio_list);
  if (!bio)
   break;

  bio->bi_private = rbio;
  bio->bi_end_io = raid_recover_end_io;
  bio->bi_opf = REQ_OP_READ;

  btrfs_bio_wq_end_io(rbio->fs_info, bio, BTRFS_WQ_ENDIO_RAID56);

  submit_bio(bio);
 }
out:
 return 0;

cleanup:
 if (rbio->operation == BTRFS_RBIO_READ_REBUILD ||
     rbio->operation == BTRFS_RBIO_REBUILD_MISSING)
  rbio_orig_end_io(rbio, BLK_STS_IOERR);

 while ((bio = bio_list_pop(&bio_list)))
  bio_put(bio);

 return -EIO;
}
