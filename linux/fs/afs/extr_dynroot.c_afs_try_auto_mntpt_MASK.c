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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {int /*<<< orphan*/  flags; TYPE_1__ fid; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  AFS_VNODE_AUTOCELL ; 
 int ENOENT ; 
 struct inode* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct dentry*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct inode *FUNC9(struct dentry *dentry, struct inode *dir)
{
	struct afs_vnode *vnode = FUNC0(dir);
	struct inode *inode;
	int ret = -ENOENT;

	FUNC4("%p{%pd}, {%llx:%llu}",
	       dentry, dentry, vnode->fid.vid, vnode->fid.vnode);

	if (!FUNC8(AFS_VNODE_AUTOCELL, &vnode->flags))
		goto out;

	ret = FUNC7(dentry);
	if (ret < 0)
		goto out;

	inode = FUNC6(dir->i_sb, false);
	if (FUNC2(inode)) {
		ret = FUNC3(inode);
		goto out;
	}

	FUNC5("= %p", inode);
	return inode;

out:
	FUNC5("= %d", ret);
	return ret == -ENOENT ? NULL : FUNC1(ret);
}