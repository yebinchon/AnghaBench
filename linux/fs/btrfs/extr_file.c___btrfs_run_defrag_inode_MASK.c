#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct inode_defrag {int cycled; int /*<<< orphan*/  last_offset; int /*<<< orphan*/  transid; int /*<<< orphan*/  ino; int /*<<< orphan*/  root; } ;
struct inode {int dummy; } ;
typedef  struct inode btrfs_root ;
struct btrfs_key {void* offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;
struct btrfs_ioctl_defrag_range_args {int /*<<< orphan*/  start; void* len; } ;
struct btrfs_fs_info {int /*<<< orphan*/  subvol_srcu; int /*<<< orphan*/  sb; } ;
typedef  int /*<<< orphan*/  range ;
struct TYPE_3__ {int /*<<< orphan*/  runtime_flags; } ;

/* Variables and functions */
 int BTRFS_DEFRAG_BATCH ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_IN_DEFRAG ; 
 int /*<<< orphan*/  BTRFS_INODE_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_ROOT_ITEM_KEY ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ *,struct btrfs_ioctl_defrag_range_args*,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,struct btrfs_key*,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btrfs_inode_defrag_cachep ; 
 struct inode* FUNC5 (struct btrfs_fs_info*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct inode_defrag*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct inode_defrag*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_ioctl_defrag_range_args*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC15(struct btrfs_fs_info *fs_info,
				    struct inode_defrag *defrag)
{
	struct btrfs_root *inode_root;
	struct inode *inode;
	struct btrfs_key key;
	struct btrfs_ioctl_defrag_range_args range;
	int num_defrag;
	int index;
	int ret;

	/* get the inode */
	key.objectid = defrag->root;
	key.type = BTRFS_ROOT_ITEM_KEY;
	key.offset = (u64)-1;

	index = FUNC13(&fs_info->subvol_srcu);

	inode_root = FUNC5(fs_info, &key);
	if (FUNC1(inode_root)) {
		ret = FUNC2(inode_root);
		goto cleanup;
	}

	key.objectid = defrag->ino;
	key.type = BTRFS_INODE_ITEM_KEY;
	key.offset = 0;
	inode = FUNC4(fs_info->sb, &key, inode_root, NULL);
	if (FUNC1(inode)) {
		ret = FUNC2(inode);
		goto cleanup;
	}
	FUNC14(&fs_info->subvol_srcu, index);

	/* do a chunk of defrag */
	FUNC7(BTRFS_INODE_IN_DEFRAG, &FUNC0(inode)->runtime_flags);
	FUNC10(&range, 0, sizeof(range));
	range.len = (u64)-1;
	range.start = defrag->last_offset;

	FUNC12(fs_info->sb);
	num_defrag = FUNC3(inode, NULL, &range, defrag->transid,
				       BTRFS_DEFRAG_BATCH);
	FUNC11(fs_info->sb);
	/*
	 * if we filled the whole defrag batch, there
	 * must be more work to do.  Queue this defrag
	 * again
	 */
	if (num_defrag == BTRFS_DEFRAG_BATCH) {
		defrag->last_offset = range.start;
		FUNC6(FUNC0(inode), defrag);
	} else if (defrag->last_offset && !defrag->cycled) {
		/*
		 * we didn't fill our defrag batch, but
		 * we didn't start at zero.  Make sure we loop
		 * around to the start of the file.
		 */
		defrag->last_offset = 0;
		defrag->cycled = 1;
		FUNC6(FUNC0(inode), defrag);
	} else {
		FUNC9(btrfs_inode_defrag_cachep, defrag);
	}

	FUNC8(inode);
	return 0;
cleanup:
	FUNC14(&fs_info->subvol_srcu, index);
	FUNC9(btrfs_inode_defrag_cachep, defrag);
	return ret;
}