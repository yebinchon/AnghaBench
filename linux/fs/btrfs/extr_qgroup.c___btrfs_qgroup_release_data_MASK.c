#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_changeset {int bytes_changed; } ;
struct TYPE_8__ {TYPE_2__* root; int /*<<< orphan*/  io_tree; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  objectid; } ;
struct TYPE_6__ {TYPE_1__ root_key; TYPE_3__* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_QUOTA_ENABLED ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_QGROUP_RSV_DATA ; 
 int /*<<< orphan*/  EXTENT_QGROUP_RESERVED ; 
 int QGROUP_FREE ; 
 int QGROUP_RELEASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct extent_changeset*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_changeset*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_changeset*) ; 
 int FUNC6 (struct inode*,struct extent_changeset*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,scalar_t__,scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC9(struct inode *inode,
			struct extent_changeset *reserved, u64 start, u64 len,
			int free)
{
	struct extent_changeset changeset;
	int trace_op = QGROUP_RELEASE;
	int ret;

	if (!FUNC7(BTRFS_FS_QUOTA_ENABLED,
		      &FUNC0(inode)->root->fs_info->flags))
		return 0;

	/* In release case, we shouldn't have @reserved */
	FUNC1(!free && reserved);
	if (free && reserved)
		return FUNC6(inode, reserved, start, len);
	FUNC4(&changeset);
	ret = FUNC3(&FUNC0(inode)->io_tree, start, 
			start + len -1, EXTENT_QGROUP_RESERVED, &changeset);
	if (ret < 0)
		goto out;

	if (free)
		trace_op = QGROUP_FREE;
	FUNC8(inode, start, len,
					changeset.bytes_changed, trace_op);
	if (free)
		FUNC2(FUNC0(inode)->root->fs_info,
				FUNC0(inode)->root->root_key.objectid,
				changeset.bytes_changed, BTRFS_QGROUP_RSV_DATA);
	ret = changeset.bytes_changed;
out:
	FUNC5(&changeset);
	return ret;
}