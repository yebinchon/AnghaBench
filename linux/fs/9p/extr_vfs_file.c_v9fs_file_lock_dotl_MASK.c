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
struct file_lock {scalar_t__ fl_type; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOLCK ; 
 scalar_t__ F_UNLCK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,struct file*,int,struct file_lock*,struct file*) ; 
 int FUNC8 (struct file*,int,struct file_lock*) ; 
 int FUNC9 (struct file*,struct file_lock*) ; 

__attribute__((used)) static int FUNC10(struct file *filp, int cmd, struct file_lock *fl)
{
	struct inode *inode = FUNC4(filp);
	int ret = -ENOLCK;

	FUNC7(P9_DEBUG_VFS, "filp: %p cmd:%d lock: %p name: %pD\n",
		 filp, cmd, fl, filp);

	/* No mandatory locks */
	if (FUNC3(inode) && fl->fl_type != F_UNLCK)
		goto out_err;

	if ((FUNC1(cmd) || FUNC2(cmd)) && fl->fl_type != F_UNLCK) {
		FUNC5(inode->i_mapping);
		FUNC6(&inode->i_data, 0, -1);
	}

	if (FUNC1(cmd) || FUNC2(cmd))
		ret = FUNC8(filp, cmd, fl);
	else if (FUNC0(cmd))
		ret = FUNC9(filp, fl);
	else
		ret = -EINVAL;
out_err:
	return ret;
}