#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u64 ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct extent_state {int dummy; } ;
struct btrfs_fs_info {scalar_t__ sectorsize; } ;
typedef  size_t loff_t ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  io_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_PREALLOC ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int EXTENT_DEFRAG ; 
 int EXTENT_DELALLOC ; 
 unsigned int EXTENT_DELALLOC_NEW ; 
 int EXTENT_DO_ACCOUNTING ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (TYPE_1__*,size_t,size_t,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct btrfs_fs_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,size_t,size_t,unsigned int,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct extent_state**) ; 
 size_t FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,size_t) ; 
 size_t FUNC10 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

int FUNC12(struct inode *inode, struct page **pages,
		      size_t num_pages, loff_t pos, size_t write_bytes,
		      struct extent_state **cached)
{
	struct btrfs_fs_info *fs_info = FUNC5(inode->i_sb);
	int err = 0;
	int i;
	u64 num_bytes;
	u64 start_pos;
	u64 end_of_last_block;
	u64 end_pos = pos + write_bytes;
	loff_t isize = FUNC8(inode);
	unsigned int extra_bits = 0;

	start_pos = pos & ~((u64) fs_info->sectorsize - 1);
	num_bytes = FUNC10(write_bytes + pos - start_pos,
			     fs_info->sectorsize);

	end_of_last_block = start_pos + num_bytes - 1;

	/*
	 * The pages may have already been dirty, clear out old accounting so
	 * we can set things up properly
	 */
	FUNC7(&FUNC0(inode)->io_tree, start_pos, end_of_last_block,
			 EXTENT_DELALLOC | EXTENT_DO_ACCOUNTING | EXTENT_DEFRAG,
			 0, 0, cached);

	if (!FUNC4(FUNC0(inode))) {
		if (start_pos >= isize &&
		    !(FUNC0(inode)->flags & BTRFS_INODE_PREALLOC)) {
			/*
			 * There can't be any extents following eof in this case
			 * so just set the delalloc new bit for the range
			 * directly.
			 */
			extra_bits |= EXTENT_DELALLOC_NEW;
		} else {
			err = FUNC3(FUNC0(inode),
							    start_pos,
							    num_bytes, cached);
			if (err)
				return err;
		}
	}

	err = FUNC6(inode, start_pos, end_of_last_block,
					extra_bits, cached);
	if (err)
		return err;

	for (i = 0; i < num_pages; i++) {
		struct page *p = pages[i];
		FUNC2(p);
		FUNC1(p);
		FUNC11(p);
	}

	/*
	 * we've only changed i_size in ram, and we haven't updated
	 * the disk i_size.  There is no need to log the inode
	 * at this time.
	 */
	if (end_pos > isize)
		FUNC9(inode, end_pos);
	return 0;
}