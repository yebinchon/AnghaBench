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
typedef  scalar_t__ u64 ;
struct inode {int /*<<< orphan*/  i_ctime; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int const FALLOC_FL_KEEP_SIZE ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 int FUNC3 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__ const,int /*<<< orphan*/ *) ; 
 struct btrfs_trans_handle* FUNC5 (struct btrfs_root*,int) ; 
 int FUNC6 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ const FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,scalar_t__ const) ; 

__attribute__((used)) static int FUNC10(struct inode *inode,
					const u64 end,
					const int mode)
{
	struct btrfs_trans_handle *trans;
	struct btrfs_root *root = FUNC0(inode)->root;
	int ret;
	int ret2;

	if (mode & FALLOC_FL_KEEP_SIZE || end <= FUNC8(inode))
		return 0;

	trans = FUNC5(root, 1);
	if (FUNC1(trans))
		return FUNC2(trans);

	inode->i_ctime = FUNC7(inode);
	FUNC9(inode, end);
	FUNC4(inode, end, NULL);
	ret = FUNC6(trans, root, inode);
	ret2 = FUNC3(trans);

	return ret ? ret : ret2;
}