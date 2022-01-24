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
typedef  scalar_t__ u64 ;
struct ulist_node {scalar_t__ val; scalar_t__ aux; } ;
struct ulist_iterator {int dummy; } ;
struct inode {int dummy; } ;
struct extent_changeset {scalar_t__ bytes_changed; int /*<<< orphan*/  range_changed; } ;
struct TYPE_4__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {TYPE_1__ root_key; TYPE_2__* fs_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  io_tree; struct btrfs_root* root; } ;
struct TYPE_5__ {int /*<<< orphan*/  sectorsize; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_QGROUP_RSV_DATA ; 
 int /*<<< orphan*/  EXTENT_QGROUP_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (struct ulist_iterator*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct extent_changeset*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_changeset*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_changeset*) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct ulist_node* FUNC10 (int /*<<< orphan*/ *,struct ulist_iterator*) ; 

__attribute__((used)) static int FUNC11(struct inode *inode,
			struct extent_changeset *reserved, u64 start, u64 len)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	struct ulist_node *unode;
	struct ulist_iterator uiter;
	struct extent_changeset changeset;
	int freed = 0;
	int ret;

	FUNC4(&changeset);
	len = FUNC9(start + len, root->fs_info->sectorsize);
	start = FUNC8(start, root->fs_info->sectorsize);

	FUNC1(&uiter);
	while ((unode = FUNC10(&reserved->range_changed, &uiter))) {
		u64 range_start = unode->val;
		/* unode->aux is the inclusive end */
		u64 range_len = unode->aux - range_start + 1;
		u64 free_start;
		u64 free_len;

		FUNC5(&changeset);

		/* Only free range in range [start, start + len) */
		if (range_start >= start + len ||
		    range_start + range_len <= start)
			continue;
		free_start = FUNC6(range_start, start);
		free_len = FUNC7(start + len, range_start + range_len) -
			   free_start;
		/*
		 * TODO: To also modify reserved->ranges_reserved to reflect
		 * the modification.
		 *
		 * However as long as we free qgroup reserved according to
		 * EXTENT_QGROUP_RESERVED, we won't double free.
		 * So not need to rush.
		 */
		ret = FUNC3(&FUNC0(inode)->io_tree,
				free_start, free_start + free_len - 1,
				EXTENT_QGROUP_RESERVED, &changeset);
		if (ret < 0)
			goto out;
		freed += changeset.bytes_changed;
	}
	FUNC2(root->fs_info, root->root_key.objectid, freed,
				  BTRFS_QGROUP_RSV_DATA);
	ret = freed;
out:
	FUNC5(&changeset);
	return ret;
}