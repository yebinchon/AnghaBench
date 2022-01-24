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
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct p9_fid* private_data; TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int FUNC0 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct p9_fid*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct file*,int) ; 

int FUNC5(struct file *filp, loff_t start, loff_t end,
			 int datasync)
{
	struct p9_fid *fid;
	struct inode *inode = filp->f_mapping->host;
	int retval;

	retval = FUNC0(filp, start, end);
	if (retval)
		return retval;

	FUNC1(inode);
	FUNC4(P9_DEBUG_VFS, "filp %p datasync %x\n", filp, datasync);

	fid = filp->private_data;

	retval = FUNC3(fid, datasync);
	FUNC2(inode);

	return retval;
}