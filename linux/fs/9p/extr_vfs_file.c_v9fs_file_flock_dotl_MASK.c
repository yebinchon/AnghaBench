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
struct inode {int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_mapping; } ;
struct file_lock {scalar_t__ fl_type; int fl_flags; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOLCK ; 
 int FL_FLOCK ; 
 int FL_POSIX ; 
 scalar_t__ F_UNLCK ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct file*,int,struct file_lock*,struct file*) ; 
 int FUNC7 (struct file*,int,struct file_lock*) ; 

__attribute__((used)) static int FUNC8(struct file *filp, int cmd,
	struct file_lock *fl)
{
	struct inode *inode = FUNC3(filp);
	int ret = -ENOLCK;

	FUNC6(P9_DEBUG_VFS, "filp: %p cmd:%d lock: %p name: %pD\n",
		 filp, cmd, fl, filp);

	/* No mandatory locks */
	if (FUNC2(inode) && fl->fl_type != F_UNLCK)
		goto out_err;

	if (!(fl->fl_flags & FL_FLOCK))
		goto out_err;

	if ((FUNC0(cmd) || FUNC1(cmd)) && fl->fl_type != F_UNLCK) {
		FUNC4(inode->i_mapping);
		FUNC5(&inode->i_data, 0, -1);
	}
	/* Convert flock to posix lock */
	fl->fl_flags |= FL_POSIX;
	fl->fl_flags ^= FL_FLOCK;

	if (FUNC0(cmd) | FUNC1(cmd))
		ret = FUNC7(filp, cmd, fl);
	else
		ret = -EINVAL;
out_err:
	return ret;
}