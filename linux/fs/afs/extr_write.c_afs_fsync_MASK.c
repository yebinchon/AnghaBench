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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file*,int) ; 
 struct inode* FUNC2 (struct file*) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct file *file, loff_t start, loff_t end, int datasync)
{
	struct inode *inode = FUNC2(file);
	struct afs_vnode *vnode = FUNC0(inode);

	FUNC1("{%llx:%llu},{n=%pD},%d",
	       vnode->fid.vid, vnode->fid.vnode, file,
	       datasync);

	return FUNC3(file, start, end);
}