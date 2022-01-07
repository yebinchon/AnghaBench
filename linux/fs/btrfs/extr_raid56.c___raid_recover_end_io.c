
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct btrfs_raid_bio {int real_stripes; int faila; int failb; scalar_t__ operation; int stripe_npages; int nr_data; int flags; TYPE_1__* bbio; int dbitmap; int bio_list_lock; } ;
typedef scalar_t__ blk_status_t ;
struct TYPE_2__ {int map_type; scalar_t__* raid_map; } ;


 scalar_t__ BLK_STS_IOERR ;
 scalar_t__ BLK_STS_OK ;
 scalar_t__ BLK_STS_RESOURCE ;
 int BTRFS_BLOCK_GROUP_RAID6 ;
 scalar_t__ BTRFS_RBIO_PARITY_SCRUB ;
 scalar_t__ BTRFS_RBIO_READ_REBUILD ;
 scalar_t__ BTRFS_RBIO_REBUILD_MISSING ;
 scalar_t__ BTRFS_RBIO_WRITE ;
 int BUG () ;
 int BUG_ON (int) ;
 int GFP_NOFS ;
 int PAGE_SIZE ;
 scalar_t__ RAID5_P_STRIPE ;
 scalar_t__ RAID6_Q_STRIPE ;
 int RBIO_CACHE_READY_BIT ;
 int RBIO_RMW_LOCKED_BIT ;
 int SetPageUptodate (struct page*) ;
 int cache_rbio_pages (struct btrfs_raid_bio*) ;
 int clear_bit (int ,int *) ;
 int copy_page (void*,void*) ;
 int finish_parity_scrub (struct btrfs_raid_bio*,int ) ;
 int finish_rmw (struct btrfs_raid_bio*) ;
 int index_rbio_pages (struct btrfs_raid_bio*) ;
 void** kcalloc (int,int,int ) ;
 int kfree (void**) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 struct page* page_in_rbio (struct btrfs_raid_bio*,int,int,int ) ;
 int raid6_2data_recov (int,int ,int,int,void**) ;
 int raid6_datap_recov (int,int ,int,void**) ;
 int rbio_orig_end_io (struct btrfs_raid_bio*,scalar_t__) ;
 struct page* rbio_stripe_page (struct btrfs_raid_bio*,int,int) ;
 int run_xor (void**,int,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void __raid_recover_end_io(struct btrfs_raid_bio *rbio)
{
 int pagenr, stripe;
 void **pointers;
 int faila = -1, failb = -1;
 struct page *page;
 blk_status_t err;
 int i;

 pointers = kcalloc(rbio->real_stripes, sizeof(void *), GFP_NOFS);
 if (!pointers) {
  err = BLK_STS_RESOURCE;
  goto cleanup_io;
 }

 faila = rbio->faila;
 failb = rbio->failb;

 if (rbio->operation == BTRFS_RBIO_READ_REBUILD ||
     rbio->operation == BTRFS_RBIO_REBUILD_MISSING) {
  spin_lock_irq(&rbio->bio_list_lock);
  set_bit(RBIO_RMW_LOCKED_BIT, &rbio->flags);
  spin_unlock_irq(&rbio->bio_list_lock);
 }

 index_rbio_pages(rbio);

 for (pagenr = 0; pagenr < rbio->stripe_npages; pagenr++) {




  if (rbio->operation == BTRFS_RBIO_PARITY_SCRUB &&
      !test_bit(pagenr, rbio->dbitmap))
   continue;




  for (stripe = 0; stripe < rbio->real_stripes; stripe++) {




   if ((rbio->operation == BTRFS_RBIO_READ_REBUILD ||
        rbio->operation == BTRFS_RBIO_REBUILD_MISSING) &&
       (stripe == faila || stripe == failb)) {
    page = page_in_rbio(rbio, stripe, pagenr, 0);
   } else {
    page = rbio_stripe_page(rbio, stripe, pagenr);
   }
   pointers[stripe] = kmap(page);
  }


  if (rbio->bbio->map_type & BTRFS_BLOCK_GROUP_RAID6) {




   if (failb < 0) {
    if (faila == rbio->nr_data) {





     err = BLK_STS_IOERR;
     goto cleanup;
    }




    goto pstripe;
   }


   if (faila > failb) {
    int tmp = failb;
    failb = faila;
    faila = tmp;
   }







   if (rbio->bbio->raid_map[failb] == RAID6_Q_STRIPE) {
    if (rbio->bbio->raid_map[faila] ==
        RAID5_P_STRIPE) {
     err = BLK_STS_IOERR;
     goto cleanup;
    }




    goto pstripe;
   }

   if (rbio->bbio->raid_map[failb] == RAID5_P_STRIPE) {
    raid6_datap_recov(rbio->real_stripes,
        PAGE_SIZE, faila, pointers);
   } else {
    raid6_2data_recov(rbio->real_stripes,
        PAGE_SIZE, faila, failb,
        pointers);
   }
  } else {
   void *p;


   BUG_ON(failb != -1);
pstripe:

   copy_page(pointers[faila], pointers[rbio->nr_data]);


   p = pointers[faila];
   for (stripe = faila; stripe < rbio->nr_data - 1; stripe++)
    pointers[stripe] = pointers[stripe + 1];
   pointers[rbio->nr_data - 1] = p;


   run_xor(pointers, rbio->nr_data - 1, PAGE_SIZE);
  }






  if (rbio->operation == BTRFS_RBIO_WRITE) {
   for (i = 0; i < rbio->stripe_npages; i++) {
    if (faila != -1) {
     page = rbio_stripe_page(rbio, faila, i);
     SetPageUptodate(page);
    }
    if (failb != -1) {
     page = rbio_stripe_page(rbio, failb, i);
     SetPageUptodate(page);
    }
   }
  }
  for (stripe = 0; stripe < rbio->real_stripes; stripe++) {




   if ((rbio->operation == BTRFS_RBIO_READ_REBUILD ||
        rbio->operation == BTRFS_RBIO_REBUILD_MISSING) &&
       (stripe == faila || stripe == failb)) {
    page = page_in_rbio(rbio, stripe, pagenr, 0);
   } else {
    page = rbio_stripe_page(rbio, stripe, pagenr);
   }
   kunmap(page);
  }
 }

 err = BLK_STS_OK;
cleanup:
 kfree(pointers);

cleanup_io:





 if (rbio->operation == BTRFS_RBIO_READ_REBUILD ||
     rbio->operation == BTRFS_RBIO_REBUILD_MISSING) {
  if (err == BLK_STS_OK && rbio->failb < 0)
   cache_rbio_pages(rbio);
  else
   clear_bit(RBIO_CACHE_READY_BIT, &rbio->flags);

  rbio_orig_end_io(rbio, err);
 } else if (err == BLK_STS_OK) {
  rbio->faila = -1;
  rbio->failb = -1;

  if (rbio->operation == BTRFS_RBIO_WRITE)
   finish_rmw(rbio);
  else if (rbio->operation == BTRFS_RBIO_PARITY_SCRUB)
   finish_parity_scrub(rbio, 0);
  else
   BUG();
 } else {
  rbio_orig_end_io(rbio, err);
 }
}
