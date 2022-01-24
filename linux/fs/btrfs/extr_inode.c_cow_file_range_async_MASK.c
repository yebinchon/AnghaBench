#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btrfs_fs_info {int /*<<< orphan*/  delalloc_workers; int /*<<< orphan*/  async_delalloc_pages; } ;
struct async_cow {int /*<<< orphan*/  num_chunks; struct async_chunk* chunks; } ;
struct async_chunk {int start; int end; unsigned int write_flags; int /*<<< orphan*/  work; int /*<<< orphan*/  extents; struct page* locked_page; struct inode* inode; int /*<<< orphan*/ * pending; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  io_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_NOCOMPRESS ; 
 void* FUNC1 (int,int) ; 
 int ENOMEM ; 
 unsigned int EXTENT_DEFRAG ; 
 unsigned int EXTENT_DELALLOC ; 
 unsigned int EXTENT_DELALLOC_NEW ; 
 unsigned int EXTENT_DO_ACCOUNTING ; 
 unsigned int EXTENT_LOCKED ; 
 int /*<<< orphan*/  FORCE_COMPRESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long PAGE_CLEAR_DIRTY ; 
 unsigned long PAGE_END_WRITEBACK ; 
 unsigned long PAGE_SET_ERROR ; 
 unsigned long PAGE_SET_WRITEBACK ; 
 int PAGE_SIZE ; 
 unsigned long PAGE_UNLOCK ; 
 int SZ_512K ; 
 int /*<<< orphan*/  async_cow_free ; 
 int /*<<< orphan*/  async_cow_start ; 
 int /*<<< orphan*/  async_cow_submit ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  btrfs_delalloc_helper ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct btrfs_fs_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chunks ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,int,struct page*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct async_cow* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 unsigned int FUNC13 () ; 
 int FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct async_cow*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC17(struct inode *inode, struct page *locked_page,
				u64 start, u64 end, int *page_started,
				unsigned long *nr_written,
				unsigned int write_flags)
{
	struct btrfs_fs_info *fs_info = FUNC7(inode->i_sb);
	struct async_cow *ctx;
	struct async_chunk *async_chunk;
	unsigned long nr_pages;
	u64 cur_end;
	u64 num_chunks = FUNC1(end - start, SZ_512K);
	int i;
	bool should_compress;
	unsigned nofs_flag;

	FUNC16(&FUNC0(inode)->io_tree, start, end);

	if (FUNC0(inode)->flags & BTRFS_INODE_NOCOMPRESS &&
	    !FUNC8(fs_info, FORCE_COMPRESS)) {
		num_chunks = 1;
		should_compress = false;
	} else {
		should_compress = true;
	}

	nofs_flag = FUNC13();
	ctx = FUNC11(FUNC15(ctx, chunks, num_chunks), GFP_KERNEL);
	FUNC12(nofs_flag);

	if (!ctx) {
		unsigned clear_bits = EXTENT_LOCKED | EXTENT_DELALLOC |
			EXTENT_DELALLOC_NEW | EXTENT_DEFRAG |
			EXTENT_DO_ACCOUNTING;
		unsigned long page_ops = PAGE_UNLOCK | PAGE_CLEAR_DIRTY |
			PAGE_SET_WRITEBACK | PAGE_END_WRITEBACK |
			PAGE_SET_ERROR;

		FUNC9(inode, start, end, locked_page,
					     clear_bits, page_ops);
		return -ENOMEM;
	}

	async_chunk = ctx->chunks;
	FUNC4(&ctx->num_chunks, num_chunks);

	for (i = 0; i < num_chunks; i++) {
		if (should_compress)
			cur_end = FUNC14(end, start + SZ_512K - 1);
		else
			cur_end = end;

		/*
		 * igrab is called higher up in the call chain, take only the
		 * lightweight reference for the callback lifetime
		 */
		FUNC10(inode);
		async_chunk[i].pending = &ctx->num_chunks;
		async_chunk[i].inode = inode;
		async_chunk[i].start = start;
		async_chunk[i].end = cur_end;
		async_chunk[i].locked_page = locked_page;
		async_chunk[i].write_flags = write_flags;
		FUNC2(&async_chunk[i].extents);

		FUNC5(&async_chunk[i].work,
				btrfs_delalloc_helper,
				async_cow_start, async_cow_submit,
				async_cow_free);

		nr_pages = FUNC1(cur_end - start, PAGE_SIZE);
		FUNC3(nr_pages, &fs_info->async_delalloc_pages);

		FUNC6(fs_info->delalloc_workers, &async_chunk[i].work);

		*nr_written += nr_pages;
		start = cur_end + 1;
	}
	*page_started = 1;
	return 0;
}