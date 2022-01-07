
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scrub_page {int io_error; int page; TYPE_1__* dev; } ;
struct scrub_block {int page_count; scalar_t__ no_io_error_seen; struct scrub_page** pagev; } ;
struct btrfs_fs_info {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int bdev; } ;


 int ASSERT (TYPE_1__*) ;
 int BIO_MAX_PAGES ;
 int PAGE_SIZE ;
 int WARN_ON (int) ;
 int bio_add_page (struct bio*,int ,int ,int ) ;
 int bio_put (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 struct bio* btrfs_io_bio_alloc (int ) ;
 int scrub_recheck_block_checksum (struct scrub_block*) ;
 scalar_t__ scrub_submit_raid56_bio_wait (struct btrfs_fs_info*,struct bio*,struct scrub_page*) ;

__attribute__((used)) static void scrub_recheck_block_on_raid56(struct btrfs_fs_info *fs_info,
       struct scrub_block *sblock)
{
 struct scrub_page *first_page = sblock->pagev[0];
 struct bio *bio;
 int page_num;


 ASSERT(first_page->dev);
 if (!first_page->dev->bdev)
  goto out;

 bio = btrfs_io_bio_alloc(BIO_MAX_PAGES);
 bio_set_dev(bio, first_page->dev->bdev);

 for (page_num = 0; page_num < sblock->page_count; page_num++) {
  struct scrub_page *page = sblock->pagev[page_num];

  WARN_ON(!page->page);
  bio_add_page(bio, page->page, PAGE_SIZE, 0);
 }

 if (scrub_submit_raid56_bio_wait(fs_info, bio, first_page)) {
  bio_put(bio);
  goto out;
 }

 bio_put(bio);

 scrub_recheck_block_checksum(sblock);

 return;
out:
 for (page_num = 0; page_num < sblock->page_count; page_num++)
  sblock->pagev[page_num]->io_error = 1;

 sblock->no_io_error_seen = 0;
}
