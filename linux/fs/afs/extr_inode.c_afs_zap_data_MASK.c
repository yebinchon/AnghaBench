#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_2__ vfs_inode; int /*<<< orphan*/  cache; TYPE_1__ fid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(struct afs_vnode *vnode)
{
	FUNC1("{%llx:%llu}", vnode->fid.vid, vnode->fid.vnode);

#ifdef CONFIG_AFS_FSCACHE
	fscache_invalidate(vnode->cache);
#endif

	/* nuke all the non-dirty pages that aren't locked, mapped or being
	 * written back in a regular file and completely discard the pages in a
	 * directory or symlink */
	if (FUNC0(vnode->vfs_inode.i_mode))
		FUNC4(&vnode->vfs_inode);
	else
		FUNC3(vnode->vfs_inode.i_mapping);
}