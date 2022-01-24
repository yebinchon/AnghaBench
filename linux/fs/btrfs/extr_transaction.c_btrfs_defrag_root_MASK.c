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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  state; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ROOT_DEFRAG_RUNNING ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,char*) ; 
 scalar_t__ FUNC4 (struct btrfs_fs_info*) ; 
 int FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_trans_handle*) ; 
 scalar_t__ FUNC7 (struct btrfs_fs_info*) ; 
 struct btrfs_trans_handle* FUNC8 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct btrfs_root *root)
{
	struct btrfs_fs_info *info = root->fs_info;
	struct btrfs_trans_handle *trans;
	int ret;

	if (FUNC11(BTRFS_ROOT_DEFRAG_RUNNING, &root->state))
		return 0;

	while (1) {
		trans = FUNC8(root, 0);
		if (FUNC0(trans))
			return FUNC1(trans);

		ret = FUNC5(trans, root);

		FUNC6(trans);
		FUNC2(info);
		FUNC10();

		if (FUNC7(info) || ret != -EAGAIN)
			break;

		if (FUNC4(info)) {
			FUNC3(info, "defrag_root cancelled");
			ret = -EAGAIN;
			break;
		}
	}
	FUNC9(BTRFS_ROOT_DEFRAG_RUNNING, &root->state);
	return ret;
}