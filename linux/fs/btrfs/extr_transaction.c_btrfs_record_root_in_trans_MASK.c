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
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {scalar_t__ last_trans; int /*<<< orphan*/  state; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  reloc_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ROOT_IN_TRANS_SETUP ; 
 int /*<<< orphan*/  BTRFS_ROOT_REF_COWS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct btrfs_trans_handle *trans,
			       struct btrfs_root *root)
{
	struct btrfs_fs_info *fs_info = root->fs_info;

	if (!FUNC4(BTRFS_ROOT_REF_COWS, &root->state))
		return 0;

	/*
	 * see record_root_in_trans for comments about IN_TRANS_SETUP usage
	 * and barriers
	 */
	FUNC3();
	if (root->last_trans == trans->transid &&
	    !FUNC4(BTRFS_ROOT_IN_TRANS_SETUP, &root->state))
		return 0;

	FUNC0(&fs_info->reloc_mutex);
	FUNC2(trans, root, 0);
	FUNC1(&fs_info->reloc_mutex);

	return 0;
}