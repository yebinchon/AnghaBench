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
struct super_block {scalar_t__ s_magic; int /*<<< orphan*/  s_active; } ;
struct pts_fs_info {int dummy; } ;
struct path {TYPE_1__* mnt; } ;
struct file {struct path f_path; } ;
struct TYPE_2__ {struct super_block* mnt_sb; } ;

/* Variables and functions */
 struct pts_fs_info* FUNC0 (struct super_block*) ; 
 scalar_t__ DEVPTS_SUPER_MAGIC ; 
 struct pts_fs_info* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct path*) ; 
 int /*<<< orphan*/  FUNC4 (struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct path*) ; 

struct pts_fs_info *FUNC6(struct file *filp)
{
	struct pts_fs_info *result;
	struct path path;
	struct super_block *sb;

	path = filp->f_path;
	FUNC4(&path);

	/* Has the devpts filesystem already been found? */
	if (path.mnt->mnt_sb->s_magic != DEVPTS_SUPER_MAGIC) {
		int err;

		err = FUNC3(&path);
		if (err) {
			result = FUNC1(err);
			goto out;
		}
	}

	/*
	 * pty code needs to hold extra references in case of last /dev/tty close
	 */
	sb = path.mnt->mnt_sb;
	FUNC2(&sb->s_active);
	result = FUNC0(sb);

out:
	FUNC5(&path);
	return result;
}