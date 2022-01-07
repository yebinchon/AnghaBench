
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct inode {int i_sb; } ;
struct btrfs_fs_info {int delalloc_workers; int async_delalloc_pages; } ;
struct async_cow {int num_chunks; struct async_chunk* chunks; } ;
struct async_chunk {int start; int end; unsigned int write_flags; int work; int extents; struct page* locked_page; struct inode* inode; int * pending; } ;
struct TYPE_2__ {int flags; int io_tree; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_NOCOMPRESS ;
 void* DIV_ROUND_UP (int,int) ;
 int ENOMEM ;
 unsigned int EXTENT_DEFRAG ;
 unsigned int EXTENT_DELALLOC ;
 unsigned int EXTENT_DELALLOC_NEW ;
 unsigned int EXTENT_DO_ACCOUNTING ;
 unsigned int EXTENT_LOCKED ;
 int FORCE_COMPRESS ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned long PAGE_CLEAR_DIRTY ;
 unsigned long PAGE_END_WRITEBACK ;
 unsigned long PAGE_SET_ERROR ;
 unsigned long PAGE_SET_WRITEBACK ;
 int PAGE_SIZE ;
 unsigned long PAGE_UNLOCK ;
 int SZ_512K ;
 int async_cow_free ;
 int async_cow_start ;
 int async_cow_submit ;
 int atomic_add (unsigned long,int *) ;
 int atomic_set (int *,int) ;
 int btrfs_delalloc_helper ;
 int btrfs_init_work (int *,int ,int ,int ,int ) ;
 int btrfs_queue_work (int ,int *) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int btrfs_test_opt (struct btrfs_fs_info*,int ) ;
 int chunks ;
 int extent_clear_unlock_delalloc (struct inode*,int,int,struct page*,unsigned int,unsigned long) ;
 int ihold (struct inode*) ;
 struct async_cow* kvmalloc (int ,int ) ;
 int memalloc_nofs_restore (unsigned int) ;
 unsigned int memalloc_nofs_save () ;
 int min (int,int) ;
 int struct_size (struct async_cow*,int ,int) ;
 int unlock_extent (int *,int,int) ;

__attribute__((used)) static int cow_file_range_async(struct inode *inode, struct page *locked_page,
    u64 start, u64 end, int *page_started,
    unsigned long *nr_written,
    unsigned int write_flags)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 struct async_cow *ctx;
 struct async_chunk *async_chunk;
 unsigned long nr_pages;
 u64 cur_end;
 u64 num_chunks = DIV_ROUND_UP(end - start, SZ_512K);
 int i;
 bool should_compress;
 unsigned nofs_flag;

 unlock_extent(&BTRFS_I(inode)->io_tree, start, end);

 if (BTRFS_I(inode)->flags & BTRFS_INODE_NOCOMPRESS &&
     !btrfs_test_opt(fs_info, FORCE_COMPRESS)) {
  num_chunks = 1;
  should_compress = 0;
 } else {
  should_compress = 1;
 }

 nofs_flag = memalloc_nofs_save();
 ctx = kvmalloc(struct_size(ctx, chunks, num_chunks), GFP_KERNEL);
 memalloc_nofs_restore(nofs_flag);

 if (!ctx) {
  unsigned clear_bits = EXTENT_LOCKED | EXTENT_DELALLOC |
   EXTENT_DELALLOC_NEW | EXTENT_DEFRAG |
   EXTENT_DO_ACCOUNTING;
  unsigned long page_ops = PAGE_UNLOCK | PAGE_CLEAR_DIRTY |
   PAGE_SET_WRITEBACK | PAGE_END_WRITEBACK |
   PAGE_SET_ERROR;

  extent_clear_unlock_delalloc(inode, start, end, locked_page,
          clear_bits, page_ops);
  return -ENOMEM;
 }

 async_chunk = ctx->chunks;
 atomic_set(&ctx->num_chunks, num_chunks);

 for (i = 0; i < num_chunks; i++) {
  if (should_compress)
   cur_end = min(end, start + SZ_512K - 1);
  else
   cur_end = end;





  ihold(inode);
  async_chunk[i].pending = &ctx->num_chunks;
  async_chunk[i].inode = inode;
  async_chunk[i].start = start;
  async_chunk[i].end = cur_end;
  async_chunk[i].locked_page = locked_page;
  async_chunk[i].write_flags = write_flags;
  INIT_LIST_HEAD(&async_chunk[i].extents);

  btrfs_init_work(&async_chunk[i].work,
    btrfs_delalloc_helper,
    async_cow_start, async_cow_submit,
    async_cow_free);

  nr_pages = DIV_ROUND_UP(cur_end - start, PAGE_SIZE);
  atomic_add(nr_pages, &fs_info->async_delalloc_pages);

  btrfs_queue_work(fs_info->delalloc_workers, &async_chunk[i].work);

  *nr_written += nr_pages;
  start = cur_end + 1;
 }
 *page_started = 1;
 return 0;
}
