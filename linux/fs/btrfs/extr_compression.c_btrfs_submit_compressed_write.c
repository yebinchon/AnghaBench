
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long u64 ;
struct page {int * mapping; } ;
struct inode {int * i_mapping; int i_sb; } ;
struct compressed_bio {unsigned long start; unsigned long len; unsigned long compressed_len; unsigned long nr_pages; int pending_bios; int * orig_bio; struct page** compressed_pages; scalar_t__ mirror_num; struct inode* inode; scalar_t__ errors; } ;
struct btrfs_fs_info {TYPE_1__* fs_devices; } ;
struct block_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ bi_size; } ;
struct bio {unsigned int bi_opf; void* bi_status; void* bi_end_io; struct compressed_bio* bi_private; TYPE_2__ bi_iter; } ;
typedef void* blk_status_t ;
struct TYPE_6__ {int flags; } ;
struct TYPE_4__ {struct block_device* latest_bdev; } ;


 void* BLK_STS_RESOURCE ;
 TYPE_3__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_NODATASUM ;
 int BTRFS_WQ_ENDIO_DATA ;
 int BUG_ON (void*) ;
 int GFP_NOFS ;
 int PAGE_ALIGNED (unsigned long) ;
 unsigned long PAGE_SIZE ;
 unsigned int REQ_OP_WRITE ;
 int WARN_ON (int) ;
 unsigned long bio_add_page (struct bio*,struct page*,unsigned long,int ) ;
 int bio_endio (struct bio*) ;
 int bio_set_dev (struct bio*,struct block_device*) ;
 struct bio* btrfs_bio_alloc (unsigned long) ;
 int btrfs_bio_fits_in_stripe (struct page*,unsigned long,struct bio*,int ) ;
 void* btrfs_bio_wq_end_io (struct btrfs_fs_info*,struct bio*,int ) ;
 void* btrfs_csum_one_bio (struct inode*,struct bio*,unsigned long,int) ;
 int btrfs_info (struct btrfs_fs_info*,char*,unsigned long,unsigned long,int) ;
 void* btrfs_map_bio (struct btrfs_fs_info*,struct bio*,int ,int) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int compressed_bio_size (struct btrfs_fs_info*,unsigned long) ;
 int cond_resched () ;
 void* end_compressed_bio_write ;
 struct compressed_bio* kmalloc (int ,int ) ;
 int refcount_inc (int *) ;
 int refcount_set (int *,int) ;

blk_status_t btrfs_submit_compressed_write(struct inode *inode, u64 start,
     unsigned long len, u64 disk_start,
     unsigned long compressed_len,
     struct page **compressed_pages,
     unsigned long nr_pages,
     unsigned int write_flags)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 struct bio *bio = ((void*)0);
 struct compressed_bio *cb;
 unsigned long bytes_left;
 int pg_index = 0;
 struct page *page;
 u64 first_byte = disk_start;
 struct block_device *bdev;
 blk_status_t ret;
 int skip_sum = BTRFS_I(inode)->flags & BTRFS_INODE_NODATASUM;

 WARN_ON(!PAGE_ALIGNED(start));
 cb = kmalloc(compressed_bio_size(fs_info, compressed_len), GFP_NOFS);
 if (!cb)
  return BLK_STS_RESOURCE;
 refcount_set(&cb->pending_bios, 0);
 cb->errors = 0;
 cb->inode = inode;
 cb->start = start;
 cb->len = len;
 cb->mirror_num = 0;
 cb->compressed_pages = compressed_pages;
 cb->compressed_len = compressed_len;
 cb->orig_bio = ((void*)0);
 cb->nr_pages = nr_pages;

 bdev = fs_info->fs_devices->latest_bdev;

 bio = btrfs_bio_alloc(first_byte);
 bio_set_dev(bio, bdev);
 bio->bi_opf = REQ_OP_WRITE | write_flags;
 bio->bi_private = cb;
 bio->bi_end_io = end_compressed_bio_write;
 refcount_set(&cb->pending_bios, 1);


 bytes_left = compressed_len;
 for (pg_index = 0; pg_index < cb->nr_pages; pg_index++) {
  int submit = 0;

  page = compressed_pages[pg_index];
  page->mapping = inode->i_mapping;
  if (bio->bi_iter.bi_size)
   submit = btrfs_bio_fits_in_stripe(page, PAGE_SIZE, bio,
         0);

  page->mapping = ((void*)0);
  if (submit || bio_add_page(bio, page, PAGE_SIZE, 0) <
      PAGE_SIZE) {






   refcount_inc(&cb->pending_bios);
   ret = btrfs_bio_wq_end_io(fs_info, bio,
        BTRFS_WQ_ENDIO_DATA);
   BUG_ON(ret);

   if (!skip_sum) {
    ret = btrfs_csum_one_bio(inode, bio, start, 1);
    BUG_ON(ret);
   }

   ret = btrfs_map_bio(fs_info, bio, 0, 1);
   if (ret) {
    bio->bi_status = ret;
    bio_endio(bio);
   }

   bio = btrfs_bio_alloc(first_byte);
   bio_set_dev(bio, bdev);
   bio->bi_opf = REQ_OP_WRITE | write_flags;
   bio->bi_private = cb;
   bio->bi_end_io = end_compressed_bio_write;
   bio_add_page(bio, page, PAGE_SIZE, 0);
  }
  if (bytes_left < PAGE_SIZE) {
   btrfs_info(fs_info,
     "bytes left %lu compress len %lu nr %lu",
          bytes_left, cb->compressed_len, cb->nr_pages);
  }
  bytes_left -= PAGE_SIZE;
  first_byte += PAGE_SIZE;
  cond_resched();
 }

 ret = btrfs_bio_wq_end_io(fs_info, bio, BTRFS_WQ_ENDIO_DATA);
 BUG_ON(ret);

 if (!skip_sum) {
  ret = btrfs_csum_one_bio(inode, bio, start, 1);
  BUG_ON(ret);
 }

 ret = btrfs_map_bio(fs_info, bio, 0, 1);
 if (ret) {
  bio->bi_status = ret;
  bio_endio(bio);
 }

 return 0;
}
