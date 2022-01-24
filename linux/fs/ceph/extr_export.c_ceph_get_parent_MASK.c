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
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 scalar_t__ CEPH_NOSNAP ; 
 scalar_t__ CEPH_SNAPDIR ; 
 int /*<<< orphan*/  EINVAL ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 struct inode* FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 struct dentry* FUNC12 (struct inode*) ; 
 struct dentry* FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct dentry*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC16(struct dentry *child)
{
	struct inode *inode = FUNC10(child);
	struct dentry *dn;

	if (FUNC8(inode) != CEPH_NOSNAP) {
		struct inode* dir;
		bool unlinked = false;
		/* do not support non-directory */
		if (!FUNC11(child)) {
			dn = FUNC1(-EINVAL);
			goto out;
		}
		dir = FUNC5(inode->i_sb, FUNC7(inode));
		if (FUNC2(dir)) {
			dn = FUNC0(dir);
			goto out;
		}
		/* There can be multiple paths to access snapped inode.
		 * For simplicity, treat snapdir of head inode as parent */
		if (FUNC8(inode) != CEPH_SNAPDIR) {
			struct inode *snapdir = FUNC6(dir);
			if (dir->i_nlink == 0)
				unlinked = true;
			FUNC15(dir);
			if (FUNC2(snapdir)) {
				dn = FUNC0(snapdir);
				goto out;
			}
			dir = snapdir;
		}
		/* If directory has already been deleted, futher get_parent
		 * will fail. Do not mark snapdir dentry as disconnected,
		 * this prevent exportfs from doing futher get_parent. */
		if (unlinked)
			dn = FUNC13(dir);
		else
			dn = FUNC12(dir);
	} else {
		dn = FUNC4(child->d_sb, child, 0);
	}
out:
	FUNC14("get_parent %p ino %llx.%llx err=%ld\n",
	     child, FUNC9(inode), (long)FUNC3(dn));
	return dn;
}