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
 int ENOLCK ; 
 scalar_t__ F_UNLCK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct file*,struct file_lock*) ; 

__attribute__((used)) static int FUNC7(struct file *filp, int cmd, struct file_lock *fl)
{
	int res = 0;
	struct inode *inode = FUNC3(filp);

	FUNC6(P9_DEBUG_VFS, "filp: %p lock: %p\n", filp, fl);

	/* No mandatory locks */
	if (FUNC2(inode) && fl->fl_type != F_UNLCK)
		return -ENOLCK;

	if ((FUNC0(cmd) || FUNC1(cmd)) && fl->fl_type != F_UNLCK) {
		FUNC4(inode->i_mapping);
		FUNC5(&inode->i_data, 0, -1);
	}

	return res;
}