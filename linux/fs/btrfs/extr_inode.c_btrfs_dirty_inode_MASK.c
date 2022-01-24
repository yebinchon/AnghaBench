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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ delayed_node; int /*<<< orphan*/  runtime_flags; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_DUMMY ; 
 int ENOSPC ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*) ; 
 struct btrfs_trans_handle* FUNC5 (struct btrfs_root*) ; 
 struct btrfs_fs_info* FUNC6 (int /*<<< orphan*/ ) ; 
 struct btrfs_trans_handle* FUNC7 (struct btrfs_root*,int) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct inode *inode)
{
	struct btrfs_fs_info *fs_info = FUNC6(inode->i_sb);
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_trans_handle *trans;
	int ret;

	if (FUNC9(BTRFS_INODE_DUMMY, &FUNC0(inode)->runtime_flags))
		return 0;

	trans = FUNC5(root);
	if (FUNC1(trans))
		return FUNC2(trans);

	ret = FUNC8(trans, root, inode);
	if (ret && ret == -ENOSPC) {
		/* whoops, lets try again with the full transaction */
		FUNC4(trans);
		trans = FUNC7(root, 1);
		if (FUNC1(trans))
			return FUNC2(trans);

		ret = FUNC8(trans, root, inode);
	}
	FUNC4(trans);
	if (FUNC0(inode)->delayed_node)
		FUNC3(fs_info);

	return ret;
}