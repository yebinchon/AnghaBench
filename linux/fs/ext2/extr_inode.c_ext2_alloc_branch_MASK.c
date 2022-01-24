#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mode; TYPE_2__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  ext2_fsblk_t ;
typedef  void* __le32 ;
struct TYPE_5__ {int s_blocksize; } ;
struct TYPE_4__ {struct buffer_head* bh; void** p; void* key; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC14(struct inode *inode,
			int indirect_blks, int *blks, ext2_fsblk_t goal,
			int *offsets, Indirect *branch)
{
	int blocksize = inode->i_sb->s_blocksize;
	int i, n = 0;
	int err = 0;
	struct buffer_head *bh;
	int num;
	ext2_fsblk_t new_blocks[4];
	ext2_fsblk_t current_block;

	num = FUNC4(inode, goal, indirect_blks,
				*blks, new_blocks, &err);
	if (err)
		return err;

	branch[0].key = FUNC3(new_blocks[0]);
	/*
	 * metadata blocks and data blocks are allocated.
	 */
	for (n = 1; n <= indirect_blks;  n++) {
		/*
		 * Get buffer_head for parent block, zero it out
		 * and set the pointer to new one, then send
		 * parent to disk.
		 */
		bh = FUNC9(inode->i_sb, new_blocks[n-1]);
		if (FUNC12(!bh)) {
			err = -ENOMEM;
			goto failed;
		}
		branch[n].bh = bh;
		FUNC6(bh);
		FUNC8(bh->b_data, 0, blocksize);
		branch[n].p = (__le32 *) bh->b_data + offsets[n];
		branch[n].key = FUNC3(new_blocks[n]);
		*branch[n].p = branch[n].key;
		if ( n == indirect_blks) {
			current_block = new_blocks[n];
			/*
			 * End of chain, update the last new metablock of
			 * the chain to point to the new allocated
			 * data blocks numbers
			 */
			for (i=1; i < num; i++)
				*(branch[n].p + i) = FUNC3(++current_block);
		}
		FUNC10(bh);
		FUNC13(bh);
		FUNC7(bh, inode);
		/* We used to sync bh here if IS_SYNC(inode).
		 * But we now rely upon generic_write_sync()
		 * and b_inode_buffers.  But not for directories.
		 */
		if (FUNC1(inode->i_mode) && FUNC0(inode))
			FUNC11(bh);
	}
	*blks = num;
	return err;

failed:
	for (i = 1; i < n; i++)
		FUNC2(branch[i].bh);
	for (i = 0; i < indirect_blks; i++)
		FUNC5(inode, new_blocks[i], 1);
	FUNC5(inode, new_blocks[i], num);
	return err;
}