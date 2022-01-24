#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct btrfs_root_backup {int dummy; } ;
struct btrfs_fs_info {int backup_root_index; TYPE_7__* super_for_commit; TYPE_8__* super_copy; TYPE_6__* csum_root; TYPE_5__* dev_root; TYPE_4__* fs_root; TYPE_3__* extent_root; TYPE_2__* chunk_root; TYPE_1__* tree_root; } ;
struct TYPE_21__ {int /*<<< orphan*/  super_roots; } ;
struct TYPE_20__ {struct btrfs_root_backup* super_roots; } ;
struct TYPE_19__ {TYPE_11__* node; } ;
struct TYPE_18__ {TYPE_11__* node; } ;
struct TYPE_17__ {TYPE_11__* node; } ;
struct TYPE_16__ {TYPE_11__* node; } ;
struct TYPE_15__ {TYPE_11__* node; } ;
struct TYPE_14__ {TYPE_11__* node; } ;
struct TYPE_13__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int BTRFS_NUM_BACKUP_ROOTS ; 
 scalar_t__ FUNC0 (struct btrfs_root_backup*) ; 
 scalar_t__ FUNC1 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_root_backup*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_root_backup*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_root_backup*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_root_backup*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct btrfs_root_backup*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct btrfs_root_backup*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct btrfs_root_backup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,struct btrfs_root_backup**,int) ; 
 int /*<<< orphan*/  FUNC28 (struct btrfs_root_backup*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC29(struct btrfs_fs_info *info)
{
	int next_backup;
	struct btrfs_root_backup *root_backup;
	int last_backup;

	next_backup = info->backup_root_index;
	last_backup = (next_backup + BTRFS_NUM_BACKUP_ROOTS - 1) %
		BTRFS_NUM_BACKUP_ROOTS;

	/*
	 * just overwrite the last backup if we're at the same generation
	 * this happens only at umount
	 */
	root_backup = info->super_for_commit->super_roots + last_backup;
	if (FUNC0(root_backup) ==
	    FUNC1(info->tree_root->node))
		next_backup = last_backup;

	root_backup = info->super_for_commit->super_roots + next_backup;

	/*
	 * make sure all of our padding and empty slots get zero filled
	 * regardless of which ones we use today
	 */
	FUNC28(root_backup, 0, sizeof(*root_backup));

	info->backup_root_index = (next_backup + 1) % BTRFS_NUM_BACKUP_ROOTS;

	FUNC21(root_backup, info->tree_root->node->start);
	FUNC22(root_backup,
			       FUNC1(info->tree_root->node));

	FUNC23(root_backup,
			       FUNC2(info->tree_root->node));

	FUNC4(root_backup, info->chunk_root->node->start);
	FUNC5(root_backup,
			       FUNC1(info->chunk_root->node));
	FUNC6(root_backup,
			       FUNC2(info->chunk_root->node));

	FUNC13(root_backup, info->extent_root->node->start);
	FUNC14(root_backup,
			       FUNC1(info->extent_root->node));
	FUNC15(root_backup,
			       FUNC2(info->extent_root->node));

	/*
	 * we might commit during log recovery, which happens before we set
	 * the fs_root.  Make sure it is valid before we fill it in.
	 */
	if (info->fs_root && info->fs_root->node) {
		FUNC16(root_backup,
					 info->fs_root->node->start);
		FUNC17(root_backup,
			       FUNC1(info->fs_root->node));
		FUNC18(root_backup,
			       FUNC2(info->fs_root->node));
	}

	FUNC10(root_backup, info->dev_root->node->start);
	FUNC11(root_backup,
			       FUNC1(info->dev_root->node));
	FUNC12(root_backup,
				       FUNC2(info->dev_root->node));

	FUNC7(root_backup, info->csum_root->node->start);
	FUNC8(root_backup,
			       FUNC1(info->csum_root->node));
	FUNC9(root_backup,
			       FUNC2(info->csum_root->node));

	FUNC20(root_backup,
			     FUNC26(info->super_copy));
	FUNC3(root_backup,
			     FUNC24(info->super_copy));
	FUNC19(root_backup,
			     FUNC25(info->super_copy));

	/*
	 * if we don't copy this out to the super_copy, it won't get remembered
	 * for the next commit
	 */
	FUNC27(&info->super_copy->super_roots,
	       &info->super_for_commit->super_roots,
	       sizeof(*root_backup) * BTRFS_NUM_BACKUP_ROOTS);
}