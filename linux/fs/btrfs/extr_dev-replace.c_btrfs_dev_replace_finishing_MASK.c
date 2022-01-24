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
typedef  int /*<<< orphan*/  uuid_tmp ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_dev_replace {scalar_t__ replace_state; int item_needs_writeback; int /*<<< orphan*/  lock_finishing_cancel_unmount; int /*<<< orphan*/  rwsem; int /*<<< orphan*/  time_stopped; struct btrfs_device* srcdev; struct btrfs_device* tgtdev; } ;
struct btrfs_fs_info {TYPE_1__* fs_devices; int /*<<< orphan*/  chunk_mutex; struct btrfs_root* tree_root; struct btrfs_dev_replace dev_replace; } ;
struct btrfs_device {int /*<<< orphan*/  dev_stats_ccnt; int /*<<< orphan*/  dev_alloc_list; int /*<<< orphan*/  bytes_used; int /*<<< orphan*/  commit_bytes_used; int /*<<< orphan*/  disk_total_bytes; int /*<<< orphan*/  total_bytes; int /*<<< orphan*/ * uuid; int /*<<< orphan*/  devid; int /*<<< orphan*/  dev_state; int /*<<< orphan*/  name; int /*<<< orphan*/  post_commit_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  device_list_mutex; int /*<<< orphan*/  rw_devices; int /*<<< orphan*/  alloc_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DEV_REPLACE_DEVID ; 
 int /*<<< orphan*/  BTRFS_DEV_STATE_REPLACE_TGT ; 
 scalar_t__ BTRFS_IOCTL_DEV_REPLACE_STATE_CANCELED ; 
 scalar_t__ BTRFS_IOCTL_DEV_REPLACE_STATE_FINISHED ; 
 scalar_t__ BTRFS_IOCTL_DEV_REPLACE_STATE_STARTED ; 
 int BTRFS_UUID_SIZE ; 
 int ECANCELED ; 
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  U64_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_device*,struct btrfs_device*) ; 
 int FUNC5 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_fs_info*,struct btrfs_device*,struct btrfs_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct btrfs_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct btrfs_fs_info*) ; 
 int FUNC18 (struct btrfs_fs_info*,int) ; 
 struct btrfs_trans_handle* FUNC19 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,struct btrfs_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC34(struct btrfs_fs_info *fs_info,
				       int scrub_ret)
{
	struct btrfs_dev_replace *dev_replace = &fs_info->dev_replace;
	struct btrfs_device *tgt_device;
	struct btrfs_device *src_device;
	struct btrfs_root *root = fs_info->tree_root;
	u8 uuid_tmp[BTRFS_UUID_SIZE];
	struct btrfs_trans_handle *trans;
	int ret = 0;

	/* don't allow cancel or unmount to disturb the finishing procedure */
	FUNC29(&dev_replace->lock_finishing_cancel_unmount);

	FUNC23(&dev_replace->rwsem);
	/* was the operation canceled, or is it finished? */
	if (dev_replace->replace_state !=
	    BTRFS_IOCTL_DEV_REPLACE_STATE_STARTED) {
		FUNC32(&dev_replace->rwsem);
		FUNC30(&dev_replace->lock_finishing_cancel_unmount);
		return 0;
	}

	tgt_device = dev_replace->tgtdev;
	src_device = dev_replace->srcdev;
	FUNC32(&dev_replace->rwsem);

	/*
	 * flush all outstanding I/O and inode extent mappings before the
	 * copy operation is declared as being finished
	 */
	ret = FUNC18(fs_info, -1);
	if (ret) {
		FUNC30(&dev_replace->lock_finishing_cancel_unmount);
		return ret;
	}
	FUNC21(fs_info, U64_MAX, 0, (u64)-1);

	/*
	 * We have to use this loop approach because at this point src_device
	 * has to be available for transaction commit to complete, yet new
	 * chunks shouldn't be allocated on the device.
	 */
	while (1) {
		trans = FUNC19(root, 0);
		if (FUNC0(trans)) {
			FUNC30(&dev_replace->lock_finishing_cancel_unmount);
			return FUNC1(trans);
		}
		ret = FUNC5(trans);
		FUNC2(ret);

		/* Prevent write_all_supers() during the finishing procedure */
		FUNC29(&fs_info->fs_devices->device_list_mutex);
		/* Prevent new chunks being allocated on the source device */
		FUNC29(&fs_info->chunk_mutex);

		if (!FUNC27(&src_device->post_commit_list)) {
			FUNC30(&fs_info->fs_devices->device_list_mutex);
			FUNC30(&fs_info->chunk_mutex);
		} else {
			break;
		}
	}

	FUNC24(&dev_replace->rwsem);
	dev_replace->replace_state =
		scrub_ret ? BTRFS_IOCTL_DEV_REPLACE_STATE_CANCELED
			  : BTRFS_IOCTL_DEV_REPLACE_STATE_FINISHED;
	dev_replace->tgtdev = NULL;
	dev_replace->srcdev = NULL;
	dev_replace->time_stopped = FUNC25();
	dev_replace->item_needs_writeback = 1;

	/* replace old device with new one in mapping tree */
	if (!scrub_ret) {
		FUNC8(fs_info,
								src_device,
								tgt_device);
	} else {
		if (scrub_ret != -ECANCELED)
			FUNC12(fs_info,
				 "btrfs_scrub_dev(%s, %llu, %s) failed %d",
				 FUNC7(src_device),
				 src_device->devid,
				 FUNC31(tgt_device->name), scrub_ret);
		FUNC33(&dev_replace->rwsem);
		FUNC30(&fs_info->chunk_mutex);
		FUNC30(&fs_info->fs_devices->device_list_mutex);
		FUNC14(fs_info);
		if (tgt_device)
			FUNC6(tgt_device);
		FUNC17(fs_info);
		FUNC30(&dev_replace->lock_finishing_cancel_unmount);

		return scrub_ret;
	}

	FUNC13(fs_info,
			  "dev_replace from %s (devid %llu) to %s finished",
			  FUNC7(src_device),
			  src_device->devid,
			  FUNC31(tgt_device->name));
	FUNC22(BTRFS_DEV_STATE_REPLACE_TGT, &tgt_device->dev_state);
	tgt_device->devid = src_device->devid;
	src_device->devid = BTRFS_DEV_REPLACE_DEVID;
	FUNC28(uuid_tmp, tgt_device->uuid, sizeof(uuid_tmp));
	FUNC28(tgt_device->uuid, src_device->uuid, sizeof(tgt_device->uuid));
	FUNC28(src_device->uuid, uuid_tmp, sizeof(src_device->uuid));
	FUNC11(tgt_device, src_device->total_bytes);
	FUNC10(tgt_device,
					  src_device->disk_total_bytes);
	FUNC9(tgt_device, src_device->bytes_used);
	tgt_device->commit_bytes_used = src_device->bytes_used;

	FUNC4(src_device, tgt_device);

	FUNC26(&tgt_device->dev_alloc_list, &fs_info->fs_devices->alloc_list);
	fs_info->fs_devices->rw_devices++;

	FUNC33(&dev_replace->rwsem);
	FUNC14(fs_info);

	FUNC16(src_device);

	FUNC17(fs_info);

	/*
	 * Increment dev_stats_ccnt so that btrfs_run_dev_stats() will
	 * update on-disk dev stats value during commit transaction
	 */
	FUNC3(&tgt_device->dev_stats_ccnt);

	/*
	 * this is again a consistent state where no dev_replace procedure
	 * is running, the target device is part of the filesystem, the
	 * source device is not part of the filesystem anymore and its 1st
	 * superblock is scratched out so that it is no longer marked to
	 * belong to this filesystem.
	 */
	FUNC30(&fs_info->chunk_mutex);
	FUNC30(&fs_info->fs_devices->device_list_mutex);

	/* replace the sysfs entry */
	FUNC20(fs_info->fs_devices, src_device);
	FUNC15(src_device);

	/* write back the superblocks */
	trans = FUNC19(root, 0);
	if (!FUNC0(trans))
		FUNC5(trans);

	FUNC30(&dev_replace->lock_finishing_cancel_unmount);

	return 0;
}