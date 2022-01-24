#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct timespec64 {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; } ;
struct btrfs_root_item {int /*<<< orphan*/  rtime; int /*<<< orphan*/  stime; int /*<<< orphan*/  received_uuid; } ;
struct TYPE_8__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {TYPE_3__ root_key; struct btrfs_root_item root_item; } ;
struct TYPE_7__ {int /*<<< orphan*/  nsec; int /*<<< orphan*/  sec; } ;
struct TYPE_6__ {int /*<<< orphan*/  nsec; int /*<<< orphan*/  sec; } ;
struct btrfs_ioctl_received_subvol_args {int /*<<< orphan*/  uuid; TYPE_2__ rtime; TYPE_1__ stime; int /*<<< orphan*/  rtransid; int /*<<< orphan*/  stransid; } ;
struct btrfs_fs_info {int /*<<< orphan*/  subvol_sem; int /*<<< orphan*/  tree_root; } ;
struct TYPE_9__ {struct btrfs_root* root; } ;

/* Variables and functions */
 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_UUID_KEY_RECEIVED_SUBVOL ; 
 int /*<<< orphan*/  BTRFS_UUID_SIZE ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 long EPERM ; 
 int EROFS ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_trans_handle*,int) ; 
 int FUNC4 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct btrfs_root*) ; 
 struct btrfs_fs_info* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_root_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_root_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct btrfs_trans_handle* FUNC14 (struct btrfs_root*,int) ; 
 int FUNC15 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,TYPE_3__*,struct btrfs_root_item*) ; 
 int FUNC16 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct timespec64 FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC20 (struct file*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct file*) ; 
 int FUNC25 (struct file*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC27(struct file *file,
					    struct btrfs_ioctl_received_subvol_args *sa)
{
	struct inode *inode = FUNC20(file);
	struct btrfs_fs_info *fs_info = FUNC9(inode->i_sb);
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_root_item *root_item = &root->root_item;
	struct btrfs_trans_handle *trans;
	struct timespec64 ct = FUNC18(inode);
	int ret = 0;
	int received_uuid_changed;

	if (!FUNC21(inode))
		return -EPERM;

	ret = FUNC25(file);
	if (ret < 0)
		return ret;

	FUNC19(&fs_info->subvol_sem);

	if (FUNC6(FUNC0(inode)) != BTRFS_FIRST_FREE_OBJECTID) {
		ret = -EINVAL;
		goto out;
	}

	if (FUNC8(root)) {
		ret = -EROFS;
		goto out;
	}

	/*
	 * 1 - root item
	 * 2 - uuid items (received uuid + subvol uuid)
	 */
	trans = FUNC14(root, 3);
	if (FUNC1(trans)) {
		ret = FUNC2(trans);
		trans = NULL;
		goto out;
	}

	sa->rtransid = trans->transid;
	sa->rtime.sec = ct.tv_sec;
	sa->rtime.nsec = ct.tv_nsec;

	received_uuid_changed = FUNC22(root_item->received_uuid, sa->uuid,
				       BTRFS_UUID_SIZE);
	if (received_uuid_changed &&
	    !FUNC7(root_item->received_uuid)) {
		ret = FUNC17(trans, root_item->received_uuid,
					  BTRFS_UUID_KEY_RECEIVED_SUBVOL,
					  root->root_key.objectid);
		if (ret && ret != -ENOENT) {
		        FUNC3(trans, ret);
		        FUNC5(trans);
		        goto out;
		}
	}
	FUNC23(root_item->received_uuid, sa->uuid, BTRFS_UUID_SIZE);
	FUNC11(root_item, sa->stransid);
	FUNC10(root_item, sa->rtransid);
	FUNC13(&root_item->stime, sa->stime.sec);
	FUNC12(&root_item->stime, sa->stime.nsec);
	FUNC13(&root_item->rtime, sa->rtime.sec);
	FUNC12(&root_item->rtime, sa->rtime.nsec);

	ret = FUNC15(trans, fs_info->tree_root,
				&root->root_key, &root->root_item);
	if (ret < 0) {
		FUNC5(trans);
		goto out;
	}
	if (received_uuid_changed && !FUNC7(sa->uuid)) {
		ret = FUNC16(trans, sa->uuid,
					  BTRFS_UUID_KEY_RECEIVED_SUBVOL,
					  root->root_key.objectid);
		if (ret < 0 && ret != -EEXIST) {
			FUNC3(trans, ret);
			FUNC5(trans);
			goto out;
		}
	}
	ret = FUNC4(trans);
out:
	FUNC26(&fs_info->subvol_sem);
	FUNC24(file);
	return ret;
}