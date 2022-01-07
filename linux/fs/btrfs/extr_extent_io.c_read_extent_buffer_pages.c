
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct extent_buffer {struct page** pages; int io_pages; scalar_t__ read_mirror; int bflags; TYPE_1__* fs_info; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {struct extent_io_tree io_tree; } ;
struct TYPE_3__ {int btree_inode; } ;


 TYPE_2__* BTRFS_I (int ) ;
 int ClearPageError (struct page*) ;
 int EIO ;
 int EXTENT_BUFFER_READ_ERR ;
 int EXTENT_BUFFER_UPTODATE ;
 int PageUptodate (struct page*) ;
 int REQ_META ;
 int WAIT_COMPLETE ;
 int WAIT_NONE ;
 int __extent_read_full_page (struct extent_io_tree*,struct page*,int ,struct bio**,int,unsigned long*,int ) ;
 int atomic_dec (int *) ;
 int atomic_set (int *,unsigned long) ;
 int btree_get_extent ;
 int clear_bit (int ,int *) ;
 int lock_page (struct page*) ;
 int num_extent_pages (struct extent_buffer*) ;
 int set_bit (int ,int *) ;
 int submit_one_bio (struct bio*,int,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;
 int wait_on_page_locked (struct page*) ;

int read_extent_buffer_pages(struct extent_buffer *eb, int wait, int mirror_num)
{
 int i;
 struct page *page;
 int err;
 int ret = 0;
 int locked_pages = 0;
 int all_uptodate = 1;
 int num_pages;
 unsigned long num_reads = 0;
 struct bio *bio = ((void*)0);
 unsigned long bio_flags = 0;
 struct extent_io_tree *tree = &BTRFS_I(eb->fs_info->btree_inode)->io_tree;

 if (test_bit(EXTENT_BUFFER_UPTODATE, &eb->bflags))
  return 0;

 num_pages = num_extent_pages(eb);
 for (i = 0; i < num_pages; i++) {
  page = eb->pages[i];
  if (wait == WAIT_NONE) {
   if (!trylock_page(page))
    goto unlock_exit;
  } else {
   lock_page(page);
  }
  locked_pages++;
 }





 for (i = 0; i < num_pages; i++) {
  page = eb->pages[i];
  if (!PageUptodate(page)) {
   num_reads++;
   all_uptodate = 0;
  }
 }

 if (all_uptodate) {
  set_bit(EXTENT_BUFFER_UPTODATE, &eb->bflags);
  goto unlock_exit;
 }

 clear_bit(EXTENT_BUFFER_READ_ERR, &eb->bflags);
 eb->read_mirror = 0;
 atomic_set(&eb->io_pages, num_reads);
 for (i = 0; i < num_pages; i++) {
  page = eb->pages[i];

  if (!PageUptodate(page)) {
   if (ret) {
    atomic_dec(&eb->io_pages);
    unlock_page(page);
    continue;
   }

   ClearPageError(page);
   err = __extent_read_full_page(tree, page,
            btree_get_extent, &bio,
            mirror_num, &bio_flags,
            REQ_META);
   if (err) {
    ret = err;
    atomic_dec(&eb->io_pages);
   }
  } else {
   unlock_page(page);
  }
 }

 if (bio) {
  err = submit_one_bio(bio, mirror_num, bio_flags);
  if (err)
   return err;
 }

 if (ret || wait != WAIT_COMPLETE)
  return ret;

 for (i = 0; i < num_pages; i++) {
  page = eb->pages[i];
  wait_on_page_locked(page);
  if (!PageUptodate(page))
   ret = -EIO;
 }

 return ret;

unlock_exit:
 while (locked_pages > 0) {
  locked_pages--;
  page = eb->pages[locked_pages];
  unlock_page(page);
 }
 return ret;
}
