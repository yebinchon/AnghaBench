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
struct vfsmount {scalar_t__ mnt_root; TYPE_1__* mnt_sb; } ;
struct pts_fs_info {int dummy; } ;
struct path {scalar_t__ dentry; struct vfsmount* mnt; } ;
struct file {struct path f_path; } ;
struct TYPE_2__ {scalar_t__ s_magic; } ;

/* Variables and functions */
 struct pts_fs_info* FUNC0 (TYPE_1__*) ; 
 scalar_t__ DEVPTS_SUPER_MAGIC ; 
 int ENODEV ; 
 struct vfsmount* FUNC1 (int) ; 
 int FUNC2 (struct path*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC6 (struct path*) ; 

struct vfsmount *FUNC7(struct file *filp, struct pts_fs_info *fsi)
{
	struct path path;
	int err = 0;

	path = filp->f_path;
	FUNC6(&path);

	/* Walk upward while the start point is a bind mount of
	 * a single file.
	 */
	while (path.mnt->mnt_root == path.dentry)
		if (FUNC4(&path) == 0)
			break;

	/* devpts_ptmx_path() finds a devpts fs or returns an error. */
	if ((path.mnt->mnt_sb->s_magic != DEVPTS_SUPER_MAGIC) ||
	    (FUNC0(path.mnt->mnt_sb) != fsi))
		err = FUNC2(&path);
	FUNC3(path.dentry);
	if (!err) {
		if (FUNC0(path.mnt->mnt_sb) == fsi)
			return path.mnt;

		err = -ENODEV;
	}

	FUNC5(path.mnt);
	return FUNC1(err);
}