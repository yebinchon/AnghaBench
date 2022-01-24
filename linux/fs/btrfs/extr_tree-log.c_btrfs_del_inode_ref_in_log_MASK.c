#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {struct btrfs_root* log_root; } ;
struct btrfs_inode {int /*<<< orphan*/  log_mutex; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_trans_handle*,int) ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*,struct btrfs_inode*) ; 
 int FUNC6 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct btrfs_trans_handle *trans,
			       struct btrfs_root *root,
			       const char *name, int name_len,
			       struct btrfs_inode *inode, u64 dirid)
{
	struct btrfs_root *log;
	u64 index;
	int ret;

	if (!FUNC5(trans, inode))
		return 0;

	ret = FUNC6(root);
	if (ret)
		return 0;
	log = root->log_root;
	FUNC7(&inode->log_mutex);

	ret = FUNC1(trans, log, name, name_len, FUNC3(inode),
				  dirid, &index);
	FUNC8(&inode->log_mutex);
	if (ret == -ENOSPC) {
		FUNC4(trans);
		ret = 0;
	} else if (ret < 0 && ret != -ENOENT)
		FUNC0(trans, ret);
	FUNC2(root);

	return ret;
}