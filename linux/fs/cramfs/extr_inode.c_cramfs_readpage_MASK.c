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
typedef  int u32 ;
typedef  int u16 ;
struct super_block {int dummy; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int CRAMFS_BLK_DIRECT_PTR_SHIFT ; 
 int CRAMFS_BLK_FLAGS ; 
 int CRAMFS_BLK_FLAG_DIRECT_PTR ; 
 int CRAMFS_BLK_FLAG_UNCOMPRESSED ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct inode*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct super_block*,int,int) ; 
 int FUNC5 (void*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 void* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  read_mutex ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

__attribute__((used)) static int FUNC17(struct file *file, struct page *page)
{
	struct inode *inode = page->mapping->host;
	u32 maxblock;
	int bytes_filled;
	void *pgdata;

	maxblock = (inode->i_size + PAGE_SIZE - 1) >> PAGE_SHIFT;
	bytes_filled = 0;
	pgdata = FUNC7(page);

	if (page->index < maxblock) {
		struct super_block *sb = inode->i_sb;
		u32 blkptr_offset = FUNC1(inode) + page->index * 4;
		u32 block_ptr, block_start, block_len;
		bool uncompressed, direct;

		FUNC11(&read_mutex);
		block_ptr = *(u32 *) FUNC4(sb, blkptr_offset, 4);
		uncompressed = (block_ptr & CRAMFS_BLK_FLAG_UNCOMPRESSED);
		direct = (block_ptr & CRAMFS_BLK_FLAG_DIRECT_PTR);
		block_ptr &= ~CRAMFS_BLK_FLAGS;

		if (direct) {
			/*
			 * The block pointer is an absolute start pointer,
			 * shifted by 2 bits. The size is included in the
			 * first 2 bytes of the data block when compressed,
			 * or PAGE_SIZE otherwise.
			 */
			block_start = block_ptr << CRAMFS_BLK_DIRECT_PTR_SHIFT;
			if (uncompressed) {
				block_len = PAGE_SIZE;
				/* if last block: cap to file length */
				if (page->index == maxblock - 1)
					block_len =
						FUNC13(inode->i_size);
			} else {
				block_len = *(u16 *)
					FUNC4(sb, block_start, 2);
				block_start += 2;
			}
		} else {
			/*
			 * The block pointer indicates one past the end of
			 * the current block (start of next block). If this
			 * is the first block then it starts where the block
			 * pointer table ends, otherwise its start comes
			 * from the previous block's pointer.
			 */
			block_start = FUNC1(inode) + maxblock * 4;
			if (page->index)
				block_start = *(u32 *)
					FUNC4(sb, blkptr_offset - 4, 4);
			/* Beware... previous ptr might be a direct ptr */
			if (FUNC15(block_start & CRAMFS_BLK_FLAG_DIRECT_PTR)) {
				/* See comments on earlier code. */
				u32 prev_start = block_start;
				block_start = prev_start & ~CRAMFS_BLK_FLAGS;
				block_start <<= CRAMFS_BLK_DIRECT_PTR_SHIFT;
				if (prev_start & CRAMFS_BLK_FLAG_UNCOMPRESSED) {
					block_start += PAGE_SIZE;
				} else {
					block_len = *(u16 *)
						FUNC4(sb, block_start, 2);
					block_start += 2 + block_len;
				}
			}
			block_start &= ~CRAMFS_BLK_FLAGS;
			block_len = block_ptr - block_start;
		}

		if (block_len == 0)
			; /* hole */
		else if (FUNC15(block_len > 2*PAGE_SIZE ||
				  (uncompressed && block_len > PAGE_SIZE))) {
			FUNC12(&read_mutex);
			FUNC14("bad data blocksize %u\n", block_len);
			goto err;
		} else if (uncompressed) {
			FUNC9(pgdata,
			       FUNC4(sb, block_start, block_len),
			       block_len);
			bytes_filled = block_len;
		} else {
			bytes_filled = FUNC5(pgdata,
				 PAGE_SIZE,
				 FUNC4(sb, block_start, block_len),
				 block_len);
		}
		FUNC12(&read_mutex);
		if (FUNC15(bytes_filled < 0))
			goto err;
	}

	FUNC10(pgdata + bytes_filled, 0, PAGE_SIZE - bytes_filled);
	FUNC6(page);
	FUNC8(page);
	FUNC3(page);
	FUNC16(page);
	return 0;

err:
	FUNC8(page);
	FUNC0(page);
	FUNC2(page);
	FUNC16(page);
	return 0;
}