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
struct super_block {int s_flags; scalar_t__ s_root; int /*<<< orphan*/  s_id; struct btrfs_fs_devices* fs_devices; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  flags; struct btrfs_fs_devices* fs_devices; void* super_for_commit; void* super_copy; } ;
struct btrfs_fs_devices {scalar_t__ rw_devices; struct block_device* latest_bdev; } ;
struct btrfs_device {int s_flags; scalar_t__ s_root; int /*<<< orphan*/  s_id; struct btrfs_fs_devices* fs_devices; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {struct file_system_type* bdev_holder; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_CSUM_IMPL_FAST ; 
 int /*<<< orphan*/  BTRFS_SUPER_INFO_SIZE ; 
 int EACCES ; 
 int EBUSY ; 
 int ENOMEM ; 
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 int FUNC2 (struct super_block*) ; 
 int SB_NOSEC ; 
 int SB_RDONLY ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_devices*) ; 
 int FUNC4 (struct super_block*,struct btrfs_fs_devices*,void*) ; 
 int FUNC5 (struct btrfs_fs_devices*,int /*<<< orphan*/ ,struct file_system_type*) ; 
 int FUNC6 (void*,int /*<<< orphan*/ ,struct file_system_type*) ; 
 TYPE_1__* FUNC7 (struct super_block*) ; 
 struct super_block* FUNC8 (char const*,int /*<<< orphan*/ ,struct file_system_type*) ; 
 int /*<<< orphan*/  btrfs_set_super ; 
 int /*<<< orphan*/  btrfs_test_super ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*) ; 
 struct dentry* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_fs_info*) ; 
 struct btrfs_fs_info* FUNC13 (int,int /*<<< orphan*/ ) ; 
 void* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (void**) ; 
 int FUNC18 (void*,void**) ; 
 int FUNC19 (struct super_block*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct super_block* FUNC21 (struct file_system_type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,char*,struct block_device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uuid_mutex ; 

__attribute__((used)) static struct dentry *FUNC24(struct file_system_type *fs_type,
		int flags, const char *device_name, void *data)
{
	struct block_device *bdev = NULL;
	struct super_block *s;
	struct btrfs_device *device = NULL;
	struct btrfs_fs_devices *fs_devices = NULL;
	struct btrfs_fs_info *fs_info = NULL;
	void *new_sec_opts = NULL;
	fmode_t mode = FMODE_READ;
	int error = 0;

	if (!(flags & SB_RDONLY))
		mode |= FMODE_WRITE;

	if (data) {
		error = FUNC18(data, &new_sec_opts);
		if (error)
			return FUNC0(error);
	}

	/*
	 * Setup a dummy root and fs_info for test/set super.  This is because
	 * we don't actually fill this stuff out until open_ctree, but we need
	 * it for searching for existing supers, so this lets us do that and
	 * then open_ctree will properly initialize everything later.
	 */
	fs_info = FUNC13(sizeof(struct btrfs_fs_info), GFP_KERNEL);
	if (!fs_info) {
		error = -ENOMEM;
		goto error_sec_opts;
	}

	fs_info->super_copy = FUNC14(BTRFS_SUPER_INFO_SIZE, GFP_KERNEL);
	fs_info->super_for_commit = FUNC14(BTRFS_SUPER_INFO_SIZE, GFP_KERNEL);
	if (!fs_info->super_copy || !fs_info->super_for_commit) {
		error = -ENOMEM;
		goto error_fs_info;
	}

	FUNC15(&uuid_mutex);
	error = FUNC6(data, mode, fs_type);
	if (error) {
		FUNC16(&uuid_mutex);
		goto error_fs_info;
	}

	device = FUNC8(device_name, mode, fs_type);
	if (FUNC1(device)) {
		FUNC16(&uuid_mutex);
		error = FUNC2(device);
		goto error_fs_info;
	}

	fs_devices = device->fs_devices;
	fs_info->fs_devices = fs_devices;

	error = FUNC5(fs_devices, mode, fs_type);
	FUNC16(&uuid_mutex);
	if (error)
		goto error_fs_info;

	if (!(flags & SB_RDONLY) && fs_devices->rw_devices == 0) {
		error = -EACCES;
		goto error_close_devices;
	}

	bdev = fs_devices->latest_bdev;
	s = FUNC21(fs_type, btrfs_test_super, btrfs_set_super, flags | SB_NOSEC,
		 fs_info);
	if (FUNC1(s)) {
		error = FUNC2(s);
		goto error_close_devices;
	}

	if (s->s_root) {
		FUNC3(fs_devices);
		FUNC12(fs_info);
		if ((flags ^ s->s_flags) & SB_RDONLY)
			error = -EBUSY;
	} else {
		FUNC22(s->s_id, sizeof(s->s_id), "%pg", bdev);
		FUNC7(s)->bdev_holder = fs_type;
		if (!FUNC23(FUNC9(), "generic"))
			FUNC20(BTRFS_FS_CSUM_IMPL_FAST, &fs_info->flags);
		error = FUNC4(s, fs_devices, data);
	}
	if (!error)
		error = FUNC19(s, new_sec_opts, 0, NULL);
	FUNC17(&new_sec_opts);
	if (error) {
		FUNC10(s);
		return FUNC0(error);
	}

	return FUNC11(s->s_root);

error_close_devices:
	FUNC3(fs_devices);
error_fs_info:
	FUNC12(fs_info);
error_sec_opts:
	FUNC17(&new_sec_opts);
	return FUNC0(error);
}