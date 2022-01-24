#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct inode {TYPE_4__* i_sb; int /*<<< orphan*/  i_mode; } ;
struct ext2_inode_info {int /*<<< orphan*/  truncate_mutex; int /*<<< orphan*/  i_block_alloc_info; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  scalar_t__ ext2_fsblk_t ;
struct TYPE_12__ {int /*<<< orphan*/  s_bdev; } ;
struct TYPE_11__ {int /*<<< orphan*/  key; int /*<<< orphan*/  bh; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int EIO ; 
 struct ext2_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC6 (struct inode*,int,int*,scalar_t__,int*,TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int,unsigned long,int) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC9 (struct inode*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC10 (struct inode*,int,int*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_4__*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC18(struct inode *inode,
			   sector_t iblock, unsigned long maxblocks,
			   u32 *bno, bool *new, bool *boundary,
			   int create)
{
	int err;
	int offsets[4];
	Indirect chain[4];
	Indirect *partial;
	ext2_fsblk_t goal;
	int indirect_blks;
	int blocks_to_boundary = 0;
	int depth;
	struct ext2_inode_info *ei = FUNC1(inode);
	int count = 0;
	ext2_fsblk_t first_block = 0;

	FUNC0(maxblocks == 0);

	depth = FUNC8(inode,iblock,offsets,&blocks_to_boundary);

	if (depth == 0)
		return -EIO;

	partial = FUNC10(inode, depth, offsets, chain, &err);
	/* Simplest case - block found, no allocation needed */
	if (!partial) {
		first_block = FUNC13(chain[depth - 1].key);
		count++;
		/*map more blocks*/
		while (count < maxblocks && count <= blocks_to_boundary) {
			ext2_fsblk_t blk;

			if (!FUNC17(chain, chain + depth - 1)) {
				/*
				 * Indirect block might be removed by
				 * truncate while we were reading it.
				 * Handling of that case: forget what we've
				 * got now, go to reread.
				 */
				err = -EAGAIN;
				count = 0;
				partial = chain + depth - 1;
				break;
			}
			blk = FUNC13(*(chain[depth-1].p + count));
			if (blk == first_block + count)
				count++;
			else
				break;
		}
		if (err != -EAGAIN)
			goto got_it;
	}

	/* Next simple case - plain lookup or failed read of indirect block */
	if (!create || err == -EIO)
		goto cleanup;

	FUNC14(&ei->truncate_mutex);
	/*
	 * If the indirect block is missing while we are reading
	 * the chain(ext2_get_branch() returns -EAGAIN err), or
	 * if the chain has been changed after we grab the semaphore,
	 * (either because another process truncated this branch, or
	 * another get_block allocated this branch) re-grab the chain to see if
	 * the request block has been allocated or not.
	 *
	 * Since we already block the truncate/other get_block
	 * at this point, we will have the current copy of the chain when we
	 * splice the branch into the tree.
	 */
	if (err == -EAGAIN || !FUNC17(chain, partial)) {
		while (partial > chain) {
			FUNC4(partial->bh);
			partial--;
		}
		partial = FUNC10(inode, depth, offsets, chain, &err);
		if (!partial) {
			count++;
			FUNC15(&ei->truncate_mutex);
			if (err)
				goto cleanup;
			goto got_it;
		}
	}

	/*
	 * Okay, we need to do block allocation.  Lazily initialize the block
	 * allocation info here if necessary
	*/
	if (FUNC3(inode->i_mode) && (!ei->i_block_alloc_info))
		FUNC11(inode);

	goal = FUNC9(inode, iblock, partial);

	/* the number of blocks need to allocate for [d,t]indirect blocks */
	indirect_blks = (chain + depth) - partial - 1;
	/*
	 * Next look up the indirect map to count the total number of
	 * direct blocks to allocate for this branch.
	 */
	count = FUNC7(partial, indirect_blks,
					maxblocks, blocks_to_boundary);
	/*
	 * XXX ???? Block out ext2_truncate while we alter the tree
	 */
	err = FUNC6(inode, indirect_blks, &count, goal,
				offsets + (partial - chain), partial);

	if (err) {
		FUNC15(&ei->truncate_mutex);
		goto cleanup;
	}

	if (FUNC2(inode)) {
		/*
		 * We must unmap blocks before zeroing so that writeback cannot
		 * overwrite zeros with stale data from block device page cache.
		 */
		FUNC5(inode->i_sb->s_bdev,
				   FUNC13(chain[depth-1].key),
				   count);
		/*
		 * block must be initialised before we put it in the tree
		 * so that it's not found by another thread before it's
		 * initialised
		 */
		err = FUNC16(inode->i_sb,
				FUNC13(chain[depth-1].key), count,
				GFP_NOFS);
		if (err) {
			FUNC15(&ei->truncate_mutex);
			goto cleanup;
		}
	}
	*new = true;

	FUNC12(inode, iblock, partial, indirect_blks, count);
	FUNC15(&ei->truncate_mutex);
got_it:
	if (count > blocks_to_boundary)
		*boundary = true;
	err = count;
	/* Clean up and exit */
	partial = chain + depth - 1;	/* the whole chain */
cleanup:
	while (partial > chain) {
		FUNC4(partial->bh);
		partial--;
	}
	if (err > 0)
		*bno = FUNC13(chain[depth-1].key);
	return err;
}