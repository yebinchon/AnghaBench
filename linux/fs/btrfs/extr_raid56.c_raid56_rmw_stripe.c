
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct btrfs_raid_bio {int nr_data; int stripe_npages; int fs_info; int stripes_pending; int stripe_len; int error; } ;
struct bio_list {int dummy; } ;
struct bio {int bi_opf; int bi_end_io; struct btrfs_raid_bio* bi_private; } ;


 int BLK_STS_IOERR ;
 int BTRFS_WQ_ENDIO_RAID56 ;
 int EIO ;
 scalar_t__ PageUptodate (struct page*) ;
 int REQ_OP_READ ;
 int alloc_rbio_pages (struct btrfs_raid_bio*) ;
 int atomic_set (int *,int) ;
 int bio_list_init (struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 int bio_list_size (struct bio_list*) ;
 int bio_put (struct bio*) ;
 int btrfs_bio_wq_end_io (int ,struct bio*,int ) ;
 int index_rbio_pages (struct btrfs_raid_bio*) ;
 struct page* page_in_rbio (struct btrfs_raid_bio*,int,int,int) ;
 int raid_rmw_end_io ;
 int rbio_add_io_page (struct btrfs_raid_bio*,struct bio_list*,struct page*,int,int,int ) ;
 int rbio_orig_end_io (struct btrfs_raid_bio*,int ) ;
 struct page* rbio_stripe_page (struct btrfs_raid_bio*,int,int) ;
 int submit_bio (struct bio*) ;
 int validate_rbio_for_rmw (struct btrfs_raid_bio*) ;

__attribute__((used)) static int raid56_rmw_stripe(struct btrfs_raid_bio *rbio)
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

 index_rbio_pages(rbio);

 atomic_set(&rbio->error, 0);




 for (stripe = 0; stripe < rbio->nr_data; stripe++) {
  for (pagenr = 0; pagenr < rbio->stripe_npages; pagenr++) {
   struct page *page;






   page = page_in_rbio(rbio, stripe, pagenr, 1);
   if (page)
    continue;

   page = rbio_stripe_page(rbio, stripe, pagenr);




   if (PageUptodate(page))
    continue;

   ret = rbio_add_io_page(rbio, &bio_list, page,
           stripe, pagenr, rbio->stripe_len);
   if (ret)
    goto cleanup;
  }
 }

 bios_to_read = bio_list_size(&bio_list);
 if (!bios_to_read) {






  goto finish;
 }





 atomic_set(&rbio->stripes_pending, bios_to_read);
 while (1) {
  bio = bio_list_pop(&bio_list);
  if (!bio)
   break;

  bio->bi_private = rbio;
  bio->bi_end_io = raid_rmw_end_io;
  bio->bi_opf = REQ_OP_READ;

  btrfs_bio_wq_end_io(rbio->fs_info, bio, BTRFS_WQ_ENDIO_RAID56);

  submit_bio(bio);
 }

 return 0;

cleanup:
 rbio_orig_end_io(rbio, BLK_STS_IOERR);

 while ((bio = bio_list_pop(&bio_list)))
  bio_put(bio);

 return -EIO;

finish:
 validate_rbio_for_rmw(rbio);
 return 0;
}
