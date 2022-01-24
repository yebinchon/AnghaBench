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
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_trans_handle {int /*<<< orphan*/  devid; int /*<<< orphan*/  fs_devices; int /*<<< orphan*/  name; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_dev_replace {int replace_state; int cont_reading_from_srcdev_mode; int is_valid; int item_needs_writeback; int /*<<< orphan*/  scrub_progress; int /*<<< orphan*/  rwsem; struct btrfs_trans_handle* tgtdev; struct btrfs_trans_handle* srcdev; int /*<<< orphan*/  num_uncorrectable_read_errors; int /*<<< orphan*/  num_write_errors; scalar_t__ cursor_right; scalar_t__ cursor_left_last_write_of_item; scalar_t__ committed_cursor_left; scalar_t__ cursor_left; int /*<<< orphan*/  time_started; } ;
struct btrfs_fs_info {struct btrfs_dev_replace dev_replace; struct btrfs_root* dev_root; } ;
struct btrfs_device {int /*<<< orphan*/  devid; int /*<<< orphan*/  fs_devices; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BTRFS_IOCTL_DEV_REPLACE_RESULT_ALREADY_STARTED ; 
 int BTRFS_IOCTL_DEV_REPLACE_RESULT_SCRUB_INPROGRESS ; 
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_CANCELED 132 
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_FINISHED 131 
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_NEVER_STARTED 130 
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_STARTED 129 
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_SUSPENDED 128 
 int ECANCELED ; 
 int EINPROGRESS ; 
 int ENOENT ; 
 int ETXTBSY ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  U64_MAX ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct btrfs_trans_handle* FUNC5 (struct btrfs_root*) ; 
 int FUNC6 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_trans_handle*) ; 
 int FUNC9 (struct btrfs_fs_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_fs_info*,char*,int) ; 
 struct btrfs_trans_handle* FUNC12 (struct btrfs_fs_info*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct btrfs_fs_info*,char const*,struct btrfs_trans_handle*,struct btrfs_trans_handle**) ; 
 scalar_t__ FUNC15 (struct btrfs_fs_info*,struct btrfs_trans_handle*) ; 
 int FUNC16 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct btrfs_trans_handle* FUNC17 (struct btrfs_root*,int) ; 
 int FUNC18 (int /*<<< orphan*/ ,struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC19 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct btrfs_fs_info *fs_info,
		const char *tgtdev_name, u64 srcdevid, const char *srcdev_name,
		int read_src)
{
	struct btrfs_root *root = fs_info->dev_root;
	struct btrfs_trans_handle *trans;
	struct btrfs_dev_replace *dev_replace = &fs_info->dev_replace;
	int ret;
	struct btrfs_device *tgt_device = NULL;
	struct btrfs_device *src_device = NULL;

	src_device = FUNC12(fs_info, srcdevid,
						  srcdev_name);
	if (FUNC1(src_device))
		return FUNC2(src_device);

	if (FUNC15(fs_info, src_device)) {
		FUNC20(fs_info,
	  "cannot replace device %s (devid %llu) due to active swapfile",
			FUNC8(src_device), src_device->devid);
		return -ETXTBSY;
	}

	/*
	 * Here we commit the transaction to make sure commit_total_bytes
	 * of all the devices are updated.
	 */
	trans = FUNC5(root);
	if (!FUNC1(trans)) {
		ret = FUNC6(trans);
		if (ret)
			return ret;
	} else if (FUNC2(trans) != -ENOENT) {
		return FUNC2(trans);
	}

	ret = FUNC14(fs_info, tgtdev_name,
					    src_device, &tgt_device);
	if (ret)
		return ret;

	FUNC21(&dev_replace->rwsem);
	switch (dev_replace->replace_state) {
	case BTRFS_IOCTL_DEV_REPLACE_STATE_NEVER_STARTED:
	case BTRFS_IOCTL_DEV_REPLACE_STATE_FINISHED:
	case BTRFS_IOCTL_DEV_REPLACE_STATE_CANCELED:
		break;
	case BTRFS_IOCTL_DEV_REPLACE_STATE_STARTED:
	case BTRFS_IOCTL_DEV_REPLACE_STATE_SUSPENDED:
		FUNC0(0);
		ret = BTRFS_IOCTL_DEV_REPLACE_RESULT_ALREADY_STARTED;
		FUNC24(&dev_replace->rwsem);
		goto leave;
	}

	dev_replace->cont_reading_from_srcdev_mode = read_src;
	dev_replace->srcdev = src_device;
	dev_replace->tgtdev = tgt_device;

	FUNC13(fs_info,
		      "dev_replace from %s (devid %llu) to %s started",
		      FUNC8(src_device),
		      src_device->devid,
		      FUNC23(tgt_device->name));

	/*
	 * from now on, the writes to the srcdev are all duplicated to
	 * go to the tgtdev as well (refer to btrfs_map_block()).
	 */
	dev_replace->replace_state = BTRFS_IOCTL_DEV_REPLACE_STATE_STARTED;
	dev_replace->time_started = FUNC22();
	dev_replace->cursor_left = 0;
	dev_replace->committed_cursor_left = 0;
	dev_replace->cursor_left_last_write_of_item = 0;
	dev_replace->cursor_right = 0;
	dev_replace->is_valid = 1;
	dev_replace->item_needs_writeback = 1;
	FUNC4(&dev_replace->num_write_errors, 0);
	FUNC4(&dev_replace->num_uncorrectable_read_errors, 0);
	FUNC24(&dev_replace->rwsem);

	ret = FUNC18(tgt_device->fs_devices, tgt_device);
	if (ret)
		FUNC11(fs_info, "kobj add dev failed %d", ret);

	FUNC19(fs_info, U64_MAX, 0, (u64)-1);

	/* Commit dev_replace state and reserve 1 item for it. */
	trans = FUNC17(root, 1);
	if (FUNC1(trans)) {
		ret = FUNC2(trans);
		FUNC21(&dev_replace->rwsem);
		dev_replace->replace_state =
			BTRFS_IOCTL_DEV_REPLACE_STATE_NEVER_STARTED;
		dev_replace->srcdev = NULL;
		dev_replace->tgtdev = NULL;
		FUNC24(&dev_replace->rwsem);
		goto leave;
	}

	ret = FUNC6(trans);
	FUNC3(ret);

	/* the disk copy procedure reuses the scrub code */
	ret = FUNC16(fs_info, src_device->devid, 0,
			      FUNC10(src_device),
			      &dev_replace->scrub_progress, 0, 1);

	ret = FUNC9(fs_info, ret);
	if (ret == -EINPROGRESS) {
		ret = BTRFS_IOCTL_DEV_REPLACE_RESULT_SCRUB_INPROGRESS;
	} else if (ret != -ECANCELED) {
		FUNC3(ret);
	}

	return ret;

leave:
	FUNC7(tgt_device);
	return ret;
}