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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct extent_state {unsigned int state; scalar_t__ start; scalar_t__ end; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  delalloc_batch; int /*<<< orphan*/  delalloc_bytes; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  new_delalloc_bytes; int /*<<< orphan*/  runtime_flags; int /*<<< orphan*/  defrag_bytes; int /*<<< orphan*/  delalloc_bytes; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_IN_DELALLOC_LIST ; 
 unsigned int EXTENT_DEFRAG ; 
 unsigned int EXTENT_DELALLOC ; 
 unsigned int EXTENT_DELALLOC_NEW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct btrfs_fs_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(struct inode *inode, struct extent_state *state,
			       unsigned *bits)
{
	struct btrfs_fs_info *fs_info = FUNC6(inode->i_sb);

	if ((*bits & EXTENT_DEFRAG) && !(*bits & EXTENT_DELALLOC))
		FUNC1(1);
	/*
	 * set_bit and clear bit hooks normally require _irqsave/restore
	 * but in this case, we are only testing for the DELALLOC
	 * bit, which is only set or cleared with irqs on
	 */
	if (!(state->state & EXTENT_DELALLOC) && (*bits & EXTENT_DELALLOC)) {
		struct btrfs_root *root = FUNC0(inode)->root;
		u64 len = state->end + 1 - state->start;
		u32 num_extents = FUNC7(len);
		bool do_list = !FUNC3(FUNC0(inode));

		FUNC9(&FUNC0(inode)->lock);
		FUNC5(FUNC0(inode), num_extents);
		FUNC10(&FUNC0(inode)->lock);

		/* For sanity tests */
		if (FUNC4(fs_info))
			return;

		FUNC8(&fs_info->delalloc_bytes, len,
					 fs_info->delalloc_batch);
		FUNC9(&FUNC0(inode)->lock);
		FUNC0(inode)->delalloc_bytes += len;
		if (*bits & EXTENT_DEFRAG)
			FUNC0(inode)->defrag_bytes += len;
		if (do_list && !FUNC11(BTRFS_INODE_IN_DELALLOC_LIST,
					 &FUNC0(inode)->runtime_flags))
			FUNC2(root, inode);
		FUNC10(&FUNC0(inode)->lock);
	}

	if (!(state->state & EXTENT_DELALLOC_NEW) &&
	    (*bits & EXTENT_DELALLOC_NEW)) {
		FUNC9(&FUNC0(inode)->lock);
		FUNC0(inode)->new_delalloc_bytes += state->end + 1 -
			state->start;
		FUNC10(&FUNC0(inode)->lock);
	}
}