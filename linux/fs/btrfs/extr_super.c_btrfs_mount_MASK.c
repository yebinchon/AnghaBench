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
typedef  int /*<<< orphan*/  u64 ;
struct vfsmount {TYPE_1__* mnt_sb; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_umount; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 struct dentry* FUNC0 (struct vfsmount*) ; 
 struct dentry* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfsmount*) ; 
 int SB_RDONLY ; 
 int FUNC4 (void*,char**,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btrfs_root_fs_type ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct vfsmount*) ; 
 struct dentry* FUNC9 (char*,int /*<<< orphan*/ ,struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct vfsmount* FUNC11 (int /*<<< orphan*/ *,int,char const*,void*) ; 

__attribute__((used)) static struct dentry *FUNC12(struct file_system_type *fs_type, int flags,
		const char *device_name, void *data)
{
	struct vfsmount *mnt_root;
	struct dentry *root;
	char *subvol_name = NULL;
	u64 subvol_objectid = 0;
	int error = 0;

	error = FUNC4(data, &subvol_name,
					&subvol_objectid);
	if (error) {
		FUNC7(subvol_name);
		return FUNC1(error);
	}

	/* mount device's root (/) */
	mnt_root = FUNC11(&btrfs_root_fs_type, flags, device_name, data);
	if (FUNC3(mnt_root) == -EBUSY) {
		if (flags & SB_RDONLY) {
			mnt_root = FUNC11(&btrfs_root_fs_type,
				flags & ~SB_RDONLY, device_name, data);
		} else {
			mnt_root = FUNC11(&btrfs_root_fs_type,
				flags | SB_RDONLY, device_name, data);
			if (FUNC2(mnt_root)) {
				root = FUNC0(mnt_root);
				FUNC7(subvol_name);
				goto out;
			}

			FUNC6(&mnt_root->mnt_sb->s_umount);
			error = FUNC5(mnt_root->mnt_sb, &flags, NULL);
			FUNC10(&mnt_root->mnt_sb->s_umount);
			if (error < 0) {
				root = FUNC1(error);
				FUNC8(mnt_root);
				FUNC7(subvol_name);
				goto out;
			}
		}
	}
	if (FUNC2(mnt_root)) {
		root = FUNC0(mnt_root);
		FUNC7(subvol_name);
		goto out;
	}

	/* mount_subvol() will free subvol_name and mnt_root */
	root = FUNC9(subvol_name, subvol_objectid, mnt_root);

out:
	return root;
}