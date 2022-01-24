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
struct p9_fid {int fid; } ;
struct inode {int dummy; } ;
struct file {struct p9_fid* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct inode*,struct file*,int) ; 

int FUNC2(struct inode *inode, struct file *filp)
{
	struct p9_fid *fid;

	fid = filp->private_data;
	FUNC1(P9_DEBUG_VFS, "inode: %p filp: %p fid: %d\n",
		 inode, filp, fid ? fid->fid : -1);
	if (fid)
		FUNC0(fid);
	return 0;
}