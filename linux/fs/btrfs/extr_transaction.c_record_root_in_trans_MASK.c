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
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {scalar_t__ last_trans; scalar_t__ commit_root; scalar_t__ node; int /*<<< orphan*/  state; TYPE_1__ root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  fs_roots_radix_lock; int /*<<< orphan*/  fs_roots_radix; struct btrfs_root* extent_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ROOT_IN_TRANS_SETUP ; 
 int /*<<< orphan*/  BTRFS_ROOT_REF_COWS ; 
 int /*<<< orphan*/  BTRFS_ROOT_TRANS_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct btrfs_trans_handle *trans,
			       struct btrfs_root *root,
			       int force)
{
	struct btrfs_fs_info *fs_info = root->fs_info;

	if ((FUNC9(BTRFS_ROOT_REF_COWS, &root->state) &&
	    root->last_trans < trans->transid) || force) {
		FUNC0(root == fs_info->extent_root);
		FUNC0(!force && root->commit_root != root->node);

		/*
		 * see below for IN_TRANS_SETUP usage rules
		 * we have the reloc mutex held now, so there
		 * is only one writer in this function
		 */
		FUNC4(BTRFS_ROOT_IN_TRANS_SETUP, &root->state);

		/* make sure readers find IN_TRANS_SETUP before
		 * they find our root->last_trans update
		 */
		FUNC6();

		FUNC7(&fs_info->fs_roots_radix_lock);
		if (root->last_trans == trans->transid && !force) {
			FUNC8(&fs_info->fs_roots_radix_lock);
			return 0;
		}
		FUNC3(&fs_info->fs_roots_radix,
				   (unsigned long)root->root_key.objectid,
				   BTRFS_ROOT_TRANS_TAG);
		FUNC8(&fs_info->fs_roots_radix_lock);
		root->last_trans = trans->transid;

		/* this is pretty tricky.  We don't want to
		 * take the relocation lock in btrfs_record_root_in_trans
		 * unless we're really doing the first setup for this root in
		 * this transaction.
		 *
		 * Normally we'd use root->last_trans as a flag to decide
		 * if we want to take the expensive mutex.
		 *
		 * But, we have to set root->last_trans before we
		 * init the relocation root, otherwise, we trip over warnings
		 * in ctree.c.  The solution used here is to flag ourselves
		 * with root IN_TRANS_SETUP.  When this is 1, we're still
		 * fixing up the reloc trees and everyone must wait.
		 *
		 * When this is zero, they can trust root->last_trans and fly
		 * through btrfs_record_root_in_trans without having to take the
		 * lock.  smp_wmb() makes sure that all the writes above are
		 * done before we pop in the zero below
		 */
		FUNC1(trans, root);
		FUNC5();
		FUNC2(BTRFS_ROOT_IN_TRANS_SETUP, &root->state);
	}
	return 0;
}