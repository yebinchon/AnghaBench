#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct ulist_node {int /*<<< orphan*/  aux; int /*<<< orphan*/  val; } ;
struct ulist_iterator {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct extent_changeset {int bytes_changed; int /*<<< orphan*/  range_changed; } ;
struct TYPE_6__ {TYPE_2__* root; int /*<<< orphan*/  io_tree; } ;
struct TYPE_4__ {int /*<<< orphan*/  objectid; } ;
struct TYPE_5__ {TYPE_1__ root_key; int /*<<< orphan*/  fs_info; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_QGROUP_RSV_DATA ; 
 int /*<<< orphan*/  EXTENT_QGROUP_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (struct ulist_iterator*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct extent_changeset*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_changeset*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_changeset*) ; 
 struct ulist_node* FUNC8 (int /*<<< orphan*/ *,struct ulist_iterator*) ; 

void FUNC9(struct inode *inode)
{
	struct extent_changeset changeset;
	struct ulist_node *unode;
	struct ulist_iterator iter;
	int ret;

	FUNC6(&changeset);
	ret = FUNC5(&FUNC0(inode)->io_tree, 0, (u64)-1,
			EXTENT_QGROUP_RESERVED, &changeset);

	FUNC2(ret < 0);
	if (FUNC2(changeset.bytes_changed)) {
		FUNC1(&iter);
		while ((unode = FUNC8(&changeset.range_changed, &iter))) {
			FUNC4(FUNC0(inode)->root->fs_info,
				"leaking qgroup reserved space, ino: %lu, start: %llu, end: %llu",
				inode->i_ino, unode->val, unode->aux);
		}
		FUNC3(FUNC0(inode)->root->fs_info,
				FUNC0(inode)->root->root_key.objectid,
				changeset.bytes_changed, BTRFS_QGROUP_RSV_DATA);

	}
	FUNC7(&changeset);
}