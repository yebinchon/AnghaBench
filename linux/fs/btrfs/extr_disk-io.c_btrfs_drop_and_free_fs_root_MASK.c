#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ objectid; } ;
struct btrfs_root {scalar_t__ free_ino_ctl; scalar_t__ free_ino_pinned; TYPE_2__* reloc_root; int /*<<< orphan*/  root_item; TYPE_1__ root_key; } ;
struct btrfs_fs_info {int /*<<< orphan*/  fs_state; int /*<<< orphan*/  subvol_srcu; int /*<<< orphan*/  fs_roots_radix_lock; int /*<<< orphan*/  fs_roots_radix; } ;
struct TYPE_4__ {int /*<<< orphan*/  commit_root; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC11(struct btrfs_fs_info *fs_info,
				  struct btrfs_root *root)
{
	FUNC7(&fs_info->fs_roots_radix_lock);
	FUNC6(&fs_info->fs_roots_radix,
			  (unsigned long)root->root_key.objectid);
	FUNC8(&fs_info->fs_roots_radix_lock);

	if (FUNC4(&root->root_item) == 0)
		FUNC9(&fs_info->subvol_srcu);

	if (FUNC10(BTRFS_FS_STATE_ERROR, &fs_info->fs_state)) {
		FUNC2(NULL, root);
		if (root->reloc_root) {
			FUNC5(root->reloc_root->node);
			FUNC5(root->reloc_root->commit_root);
			FUNC3(root->reloc_root);
			root->reloc_root = NULL;
		}
	}

	if (root->free_ino_pinned)
		FUNC0(root->free_ino_pinned);
	if (root->free_ino_ctl)
		FUNC0(root->free_ino_ctl);
	FUNC1(root);
}