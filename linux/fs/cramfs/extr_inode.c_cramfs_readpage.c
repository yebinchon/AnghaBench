
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct super_block {int dummy; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int CRAMFS_BLK_DIRECT_PTR_SHIFT ;
 int CRAMFS_BLK_FLAGS ;
 int CRAMFS_BLK_FLAG_DIRECT_PTR ;
 int CRAMFS_BLK_FLAG_UNCOMPRESSED ;
 int ClearPageUptodate (struct page*) ;
 int OFFSET (struct inode*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 scalar_t__ cramfs_read (struct super_block*,int,int) ;
 int cramfs_uncompress_block (void*,int,scalar_t__,int) ;
 int flush_dcache_page (struct page*) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (void*,scalar_t__,int) ;
 int memset (void*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int offset_in_page (int) ;
 int pr_err (char*,int) ;
 int read_mutex ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int cramfs_readpage(struct file *file, struct page *page)
{
 struct inode *inode = page->mapping->host;
 u32 maxblock;
 int bytes_filled;
 void *pgdata;

 maxblock = (inode->i_size + PAGE_SIZE - 1) >> PAGE_SHIFT;
 bytes_filled = 0;
 pgdata = kmap(page);

 if (page->index < maxblock) {
  struct super_block *sb = inode->i_sb;
  u32 blkptr_offset = OFFSET(inode) + page->index * 4;
  u32 block_ptr, block_start, block_len;
  bool uncompressed, direct;

  mutex_lock(&read_mutex);
  block_ptr = *(u32 *) cramfs_read(sb, blkptr_offset, 4);
  uncompressed = (block_ptr & CRAMFS_BLK_FLAG_UNCOMPRESSED);
  direct = (block_ptr & CRAMFS_BLK_FLAG_DIRECT_PTR);
  block_ptr &= ~CRAMFS_BLK_FLAGS;

  if (direct) {






   block_start = block_ptr << CRAMFS_BLK_DIRECT_PTR_SHIFT;
   if (uncompressed) {
    block_len = PAGE_SIZE;

    if (page->index == maxblock - 1)
     block_len =
      offset_in_page(inode->i_size);
   } else {
    block_len = *(u16 *)
     cramfs_read(sb, block_start, 2);
    block_start += 2;
   }
  } else {







   block_start = OFFSET(inode) + maxblock * 4;
   if (page->index)
    block_start = *(u32 *)
     cramfs_read(sb, blkptr_offset - 4, 4);

   if (unlikely(block_start & CRAMFS_BLK_FLAG_DIRECT_PTR)) {

    u32 prev_start = block_start;
    block_start = prev_start & ~CRAMFS_BLK_FLAGS;
    block_start <<= CRAMFS_BLK_DIRECT_PTR_SHIFT;
    if (prev_start & CRAMFS_BLK_FLAG_UNCOMPRESSED) {
     block_start += PAGE_SIZE;
    } else {
     block_len = *(u16 *)
      cramfs_read(sb, block_start, 2);
     block_start += 2 + block_len;
    }
   }
   block_start &= ~CRAMFS_BLK_FLAGS;
   block_len = block_ptr - block_start;
  }

  if (block_len == 0)
   ;
  else if (unlikely(block_len > 2*PAGE_SIZE ||
      (uncompressed && block_len > PAGE_SIZE))) {
   mutex_unlock(&read_mutex);
   pr_err("bad data blocksize %u\n", block_len);
   goto err;
  } else if (uncompressed) {
   memcpy(pgdata,
          cramfs_read(sb, block_start, block_len),
          block_len);
   bytes_filled = block_len;
  } else {
   bytes_filled = cramfs_uncompress_block(pgdata,
     PAGE_SIZE,
     cramfs_read(sb, block_start, block_len),
     block_len);
  }
  mutex_unlock(&read_mutex);
  if (unlikely(bytes_filled < 0))
   goto err;
 }

 memset(pgdata + bytes_filled, 0, PAGE_SIZE - bytes_filled);
 flush_dcache_page(page);
 kunmap(page);
 SetPageUptodate(page);
 unlock_page(page);
 return 0;

err:
 kunmap(page);
 ClearPageUptodate(page);
 SetPageError(page);
 unlock_page(page);
 return 0;
}
