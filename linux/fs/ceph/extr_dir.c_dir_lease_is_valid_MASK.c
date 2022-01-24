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
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_parent; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_shared_gen; int /*<<< orphan*/  i_ceph_lock; } ;
struct ceph_dentry_info {int lease_shared_gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_CAP_FILE_SHARED ; 
 int FUNC0 (struct ceph_inode_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_dentry_info*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct ceph_dentry_info* FUNC3 (struct dentry*) ; 
 struct ceph_inode_info* FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct inode*,unsigned int,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dentry *dentry)
{
	struct ceph_inode_info *ci = FUNC4(dir);
	int valid;
	int shared_gen;

	FUNC7(&ci->i_ceph_lock);
	valid = FUNC0(ci, CEPH_CAP_FILE_SHARED, 1);
	shared_gen = FUNC2(&ci->i_shared_gen);
	FUNC8(&ci->i_ceph_lock);
	if (valid) {
		struct ceph_dentry_info *di;
		FUNC7(&dentry->d_lock);
		di = FUNC3(dentry);
		if (dir == FUNC5(dentry->d_parent) &&
		    di && di->lease_shared_gen == shared_gen)
			FUNC1(di);
		else
			valid = 0;
		FUNC8(&dentry->d_lock);
	}
	FUNC6("dir_lease_is_valid dir %p v%u dentry %p = %d\n",
	     dir, (unsigned)FUNC2(&ci->i_shared_gen), dentry, valid);
	return valid;
}