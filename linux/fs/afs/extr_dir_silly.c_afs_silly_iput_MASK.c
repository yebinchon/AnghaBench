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
struct dentry {int d_flags; int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  vnode; } ;
struct afs_vnode {int /*<<< orphan*/  rmdir_lock; int /*<<< orphan*/  silly_key; int /*<<< orphan*/  lock; int /*<<< orphan*/  lock_state; TYPE_1__ fid; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  AFS_VNODE_LOCK_DELETED ; 
 int DCACHE_NFSFS_RENAMED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct dentry*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_vnode*,struct afs_vnode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_flock_silly_delete ; 
 struct dentry* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 scalar_t__ FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct afs_vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wq ; 

int FUNC16(struct dentry *dentry, struct inode *inode)
{
	struct afs_vnode *dvnode = FUNC0(FUNC7(dentry->d_parent));
	struct afs_vnode *vnode = FUNC0(inode);
	struct dentry *alias;
	int ret;

	FUNC1(wq);

	FUNC3("%p{%pd},%llx", dentry, dentry, vnode->fid.vnode);

	FUNC10(&dvnode->rmdir_lock);

	alias = FUNC5(dentry->d_parent, &dentry->d_name, &wq);
	if (FUNC2(alias)) {
		FUNC15(&dvnode->rmdir_lock);
		return 0;
	}

	if (!FUNC6(alias)) {
		/* We raced with lookup...  See if we need to transfer the
		 * sillyrename information to the aliased dentry.
		 */
		ret = 0;
		FUNC12(&alias->d_lock);
		if (FUNC9(alias) &&
		    !(alias->d_flags & DCACHE_NFSFS_RENAMED)) {
			alias->d_flags |= DCACHE_NFSFS_RENAMED;
			ret = 1;
		}
		FUNC13(&alias->d_lock);
		FUNC15(&dvnode->rmdir_lock);
		FUNC11(alias);
		return ret;
	}

	/* Stop lock-release from complaining. */
	FUNC12(&vnode->lock);
	vnode->lock_state = AFS_VNODE_LOCK_DELETED;
	FUNC14(vnode, NULL, afs_flock_silly_delete, 0);
	FUNC13(&vnode->lock);

	FUNC4(dvnode, vnode, dentry, dvnode->silly_key);
	FUNC15(&dvnode->rmdir_lock);
	FUNC8(alias);
	FUNC11(alias);
	return 1;
}