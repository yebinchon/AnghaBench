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
typedef  int /*<<< orphan*/  u64 ;
struct extent_buffer {int /*<<< orphan*/  start; } ;
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {scalar_t__ last_trans; int /*<<< orphan*/  state; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {TYPE_2__* fs_devices; TYPE_1__* running_transaction; } ;
struct btrfs_disk_key {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  metadata_uuid; } ;
struct TYPE_3__ {scalar_t__ transid; } ;

/* Variables and functions */
 int BTRFS_HEADER_FLAG_RELOC ; 
 int BTRFS_HEADER_FLAG_WRITTEN ; 
 int /*<<< orphan*/  BTRFS_MIXED_BACKREF_REV ; 
 int /*<<< orphan*/  BTRFS_ROOT_REF_COWS ; 
 int /*<<< orphan*/  BTRFS_TREE_RELOC_OBJECTID ; 
 scalar_t__ FUNC0 (struct extent_buffer*) ; 
 int FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct extent_buffer* FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfs_disk_key*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,int) ; 
 scalar_t__ FUNC5 (struct extent_buffer*) ; 
 int FUNC6 (struct extent_buffer*) ; 
 int FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,struct btrfs_disk_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,struct btrfs_disk_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct extent_buffer*,struct extent_buffer*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct extent_buffer*,int /*<<< orphan*/ ) ; 

int FUNC19(struct btrfs_trans_handle *trans,
		      struct btrfs_root *root,
		      struct extent_buffer *buf,
		      struct extent_buffer **cow_ret, u64 new_root_objectid)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct extent_buffer *cow;
	int ret = 0;
	int level;
	struct btrfs_disk_key disk_key;

	FUNC2(FUNC17(BTRFS_ROOT_REF_COWS, &root->state) &&
		trans->transid != fs_info->running_transaction->transid);
	FUNC2(FUNC17(BTRFS_ROOT_REF_COWS, &root->state) &&
		trans->transid != root->last_trans);

	level = FUNC6(buf);
	if (level == 0)
		FUNC8(buf, &disk_key, 0);
	else
		FUNC10(buf, &disk_key, 0);

	cow = FUNC3(trans, root, 0, new_root_objectid,
			&disk_key, level, buf->start, 0);
	if (FUNC0(cow))
		return FUNC1(cow);

	FUNC16(cow, buf);
	FUNC12(cow, cow->start);
	FUNC14(cow, trans->transid);
	FUNC11(cow, BTRFS_MIXED_BACKREF_REV);
	FUNC4(cow, BTRFS_HEADER_FLAG_WRITTEN |
				     BTRFS_HEADER_FLAG_RELOC);
	if (new_root_objectid == BTRFS_TREE_RELOC_OBJECTID)
		FUNC13(cow, BTRFS_HEADER_FLAG_RELOC);
	else
		FUNC15(cow, new_root_objectid);

	FUNC18(cow, fs_info->fs_devices->metadata_uuid);

	FUNC2(FUNC5(buf) > trans->transid);
	if (new_root_objectid == BTRFS_TREE_RELOC_OBJECTID)
		ret = FUNC7(trans, root, cow, 1);
	else
		ret = FUNC7(trans, root, cow, 0);

	if (ret)
		return ret;

	FUNC9(cow);
	*cow_ret = cow;
	return 0;
}