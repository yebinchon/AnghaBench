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
struct path {int /*<<< orphan*/  dentry; } ;
struct file {int dummy; } ;
struct autofs_sb_info {int /*<<< orphan*/  fs_lock; TYPE_1__* sb; } ;
struct autofs_info {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct TYPE_4__ {int uid; int gid; } ;
struct autofs_dev_ioctl {TYPE_2__ requester; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_3__ {int /*<<< orphan*/  s_dev; } ;

/* Variables and functions */
 int ENOENT ; 
 struct autofs_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,struct path*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct path*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_by_dev ; 

__attribute__((used)) static int FUNC9(struct file *fp,
				      struct autofs_sb_info *sbi,
				      struct autofs_dev_ioctl *param)
{
	struct autofs_info *ino;
	struct path path;
	dev_t devid;
	int err = -ENOENT;

	/* param->path has been checked in validate_dev_ioctl() */

	devid = sbi->sb->s_dev;

	param->requester.uid = param->requester.gid = -1;

	err = FUNC3(param->path, &path, test_by_dev, &devid);
	if (err)
		goto out;

	ino = FUNC0(path.dentry);
	if (ino) {
		err = 0;
		FUNC1(&path, 0);
		FUNC7(&sbi->fs_lock);
		param->requester.uid =
			FUNC5(FUNC2(), ino->uid);
		param->requester.gid =
			FUNC4(FUNC2(), ino->gid);
		FUNC8(&sbi->fs_lock);
	}
	FUNC6(&path);
out:
	return err;
}