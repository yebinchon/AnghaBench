#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct inode*) ; 
 int FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,char*,int /*<<< orphan*/ ) ; 

int FUNC8(struct inode *inode, struct file *filp)
{
	int err;
	struct dentry *dir;

	err = FUNC6(inode);
	if (err)
		return err;

	dir = FUNC2(FUNC4(filp));
	if (FUNC0(FUNC1(dir)) &&
	    !FUNC5(FUNC1(dir), inode)) {
		FUNC7(inode,
			     "Inconsistent encryption context (parent directory: %lu)",
			     FUNC1(dir)->i_ino);
		err = -EPERM;
	}
	FUNC3(dir);
	return err;
}