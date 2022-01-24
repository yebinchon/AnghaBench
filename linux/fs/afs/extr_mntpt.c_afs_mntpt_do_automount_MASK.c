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
struct vfsmount {int dummy; } ;
struct fs_context {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vfsmount* FUNC1 (struct fs_context*) ; 
 struct vfsmount* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct fs_context*) ; 
 int /*<<< orphan*/  afs_fs_type ; 
 int FUNC4 (struct fs_context*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 struct vfsmount* FUNC6 (struct fs_context*) ; 
 struct fs_context* FUNC7 (int /*<<< orphan*/ *,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct fs_context*) ; 

__attribute__((used)) static struct vfsmount *FUNC9(struct dentry *mntpt)
{
	struct fs_context *fc;
	struct vfsmount *mnt;
	int ret;

	FUNC0(!FUNC5(mntpt));

	fc = FUNC7(&afs_fs_type, mntpt);
	if (FUNC3(fc))
		return FUNC1(fc);

	ret = FUNC4(fc, mntpt);
	if (!ret)
		mnt = FUNC6(fc);
	else
		mnt = FUNC2(ret);

	FUNC8(fc);
	return mnt;
}