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
struct btrfs_root {int dummy; } ;
struct btrfs_dev_replace {int replace_state; int item_needs_writeback; int /*<<< orphan*/  lock_finishing_cancel_unmount; int /*<<< orphan*/  rwsem; int /*<<< orphan*/  time_stopped; struct btrfs_device* srcdev; struct btrfs_device* tgtdev; } ;
struct btrfs_fs_info {int /*<<< orphan*/  sb; struct btrfs_root* tree_root; struct btrfs_dev_replace dev_replace; } ;
struct btrfs_device {int /*<<< orphan*/  devid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BTRFS_IOCTL_DEV_REPLACE_RESULT_NOT_STARTED ; 
 int BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR ; 
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_CANCELED 132 
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_FINISHED 131 
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_NEVER_STARTED 130 
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_STARTED 129 
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_SUSPENDED 128 
 int EINVAL ; 
 int ENOTCONN ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct btrfs_fs_info*) ; 
 struct btrfs_trans_handle* FUNC9 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct btrfs_fs_info *fs_info)
{
	struct btrfs_dev_replace *dev_replace = &fs_info->dev_replace;
	struct btrfs_device *tgt_device = NULL;
	struct btrfs_device *src_device = NULL;
	struct btrfs_trans_handle *trans;
	struct btrfs_root *root = fs_info->tree_root;
	int result;
	int ret;

	if (FUNC14(fs_info->sb))
		return -EROFS;

	FUNC12(&dev_replace->lock_finishing_cancel_unmount);
	FUNC10(&dev_replace->rwsem);
	switch (dev_replace->replace_state) {
	case BTRFS_IOCTL_DEV_REPLACE_STATE_NEVER_STARTED:
	case BTRFS_IOCTL_DEV_REPLACE_STATE_FINISHED:
	case BTRFS_IOCTL_DEV_REPLACE_STATE_CANCELED:
		result = BTRFS_IOCTL_DEV_REPLACE_RESULT_NOT_STARTED;
		FUNC15(&dev_replace->rwsem);
		break;
	case BTRFS_IOCTL_DEV_REPLACE_STATE_STARTED:
		tgt_device = dev_replace->tgtdev;
		src_device = dev_replace->srcdev;
		FUNC15(&dev_replace->rwsem);
		ret = FUNC8(fs_info);
		if (ret < 0) {
			result = BTRFS_IOCTL_DEV_REPLACE_RESULT_NOT_STARTED;
		} else {
			result = BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR;
			/*
			 * btrfs_dev_replace_finishing() will handle the
			 * cleanup part
			 */
			FUNC7(fs_info,
				"dev_replace from %s (devid %llu) to %s canceled",
				FUNC6(src_device), src_device->devid,
				FUNC6(tgt_device));
		}
		break;
	case BTRFS_IOCTL_DEV_REPLACE_STATE_SUSPENDED:
		/*
		 * Scrub doing the replace isn't running so we need to do the
		 * cleanup step of btrfs_dev_replace_finishing() here
		 */
		result = BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR;
		tgt_device = dev_replace->tgtdev;
		src_device = dev_replace->srcdev;
		dev_replace->tgtdev = NULL;
		dev_replace->srcdev = NULL;
		dev_replace->replace_state =
				BTRFS_IOCTL_DEV_REPLACE_STATE_CANCELED;
		dev_replace->time_stopped = FUNC11();
		dev_replace->item_needs_writeback = 1;

		FUNC15(&dev_replace->rwsem);

		/* Scrub for replace must not be running in suspended state */
		ret = FUNC8(fs_info);
		FUNC0(ret != -ENOTCONN);

		trans = FUNC9(root, 0);
		if (FUNC1(trans)) {
			FUNC13(&dev_replace->lock_finishing_cancel_unmount);
			return FUNC2(trans);
		}
		ret = FUNC4(trans);
		FUNC3(ret);

		FUNC7(fs_info,
		"suspended dev_replace from %s (devid %llu) to %s canceled",
			FUNC6(src_device), src_device->devid,
			FUNC6(tgt_device));

		if (tgt_device)
			FUNC5(tgt_device);
		break;
	default:
		FUNC15(&dev_replace->rwsem);
		result = -EINVAL;
	}

	FUNC13(&dev_replace->lock_finishing_cancel_unmount);
	return result;
}