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
struct inode {int dummy; } ;
struct afs_vnode {int /*<<< orphan*/  fid; } ;
struct afs_iget_data {int /*<<< orphan*/  fid; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC2(struct inode *inode, void *opaque)
{
	struct afs_iget_data *iget_data = opaque;
	struct afs_vnode *vnode = FUNC0(inode);

	return FUNC1(&vnode->fid, &iget_data->fid, sizeof(iget_data->fid)) == 0;
}