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
struct file {int f_mode; struct afs_file* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_file {int /*<<< orphan*/  key; scalar_t__ wb; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_file*) ; 
 int FUNC7 (struct file*,int /*<<< orphan*/ ) ; 

int FUNC8(struct inode *inode, struct file *file)
{
	struct afs_vnode *vnode = FUNC0(inode);
	struct afs_file *af = file->private_data;
	int ret = 0;

	FUNC1("{%llx:%llu},", vnode->fid.vid, vnode->fid.vnode);

	if ((file->f_mode & FMODE_WRITE))
		ret = FUNC7(file, 0);

	file->private_data = NULL;
	if (af->wb)
		FUNC4(af->wb);
	FUNC5(af->key);
	FUNC6(af);
	FUNC3(vnode);
	FUNC2(" = %d", ret);
	return ret;
}