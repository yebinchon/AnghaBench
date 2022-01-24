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
struct inode {int /*<<< orphan*/  i_count; } ;
struct dentry {int dummy; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_lock; int /*<<< orphan*/  i_filelock_ref; int /*<<< orphan*/  i_cap_snaps; scalar_t__ i_flushing_caps; scalar_t__ i_dirty_caps; struct ceph_cap* i_auth_cap; } ;
struct ceph_cap {int issued; int implemented; } ;

/* Variables and functions */
 int CEPH_CAP_ANY_WR ; 
 int CEPH_CAP_FILE_CACHE ; 
 int FUNC0 (struct ceph_inode_info*) ; 
 int FUNC1 (struct ceph_inode_info*,struct ceph_cap*) ; 
 int FUNC2 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_cap*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct ceph_inode_info* FUNC6 (struct inode*) ; 
 struct dentry* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct inode*,struct ceph_cap*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 scalar_t__ FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct inode *inode, struct ceph_cap *cap, void *arg)
{
	int *remaining = arg;
	struct ceph_inode_info *ci = FUNC6(inode);
	int used, wanted, oissued, mine;

	if (*remaining <= 0)
		return -1;

	FUNC13(&ci->i_ceph_lock);
	mine = cap->issued | cap->implemented;
	used = FUNC2(ci);
	wanted = FUNC0(ci);
	oissued = FUNC1(ci, cap);

	FUNC9("trim_caps_cb %p cap %p mine %s oissued %s used %s wanted %s\n",
	     inode, cap, FUNC5(mine), FUNC5(oissued),
	     FUNC5(used), FUNC5(wanted));
	if (cap == ci->i_auth_cap) {
		if (ci->i_dirty_caps || ci->i_flushing_caps ||
		    !FUNC12(&ci->i_cap_snaps))
			goto out;
		if ((used | wanted) & CEPH_CAP_ANY_WR)
			goto out;
		/* Note: it's possible that i_filelock_ref becomes non-zero
		 * after dropping auth caps. It doesn't hurt because reply
		 * of lock mds request will re-add auth caps. */
		if (FUNC4(&ci->i_filelock_ref) > 0)
			goto out;
	}
	/* The inode has cached pages, but it's no longer used.
	 * we can safely drop it */
	if (wanted == 0 && used == CEPH_CAP_FILE_CACHE &&
	    !(oissued & CEPH_CAP_FILE_CACHE)) {
	  used = 0;
	  oissued = 0;
	}
	if ((used | wanted) & ~oissued & mine)
		goto out;   /* we need these caps */

	if (oissued) {
		/* we aren't the only cap.. just remove us */
		FUNC3(cap, true);
		(*remaining)--;
	} else {
		struct dentry *dentry;
		/* try dropping referring dentries */
		FUNC14(&ci->i_ceph_lock);
		dentry = FUNC7(inode);
		if (dentry && FUNC11(dentry)) {
			int count;
			FUNC10(dentry);
			FUNC8(inode);
			count = FUNC4(&inode->i_count);
			if (count == 1)
				(*remaining)--;
			FUNC9("trim_caps_cb %p cap %p pruned, count now %d\n",
			     inode, cap, count);
		} else {
			FUNC10(dentry);
		}
		return 0;
	}

out:
	FUNC14(&ci->i_ceph_lock);
	return 0;
}