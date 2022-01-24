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
struct dentry {int /*<<< orphan*/  d_parent; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_lock; int /*<<< orphan*/  i_shared_gen; } ;
struct ceph_dentry_info {scalar_t__ lease_shared_gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_CAP_FILE_SHARED ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (struct dentry const*) ; 
 scalar_t__ FUNC1 (struct ceph_inode_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct ceph_dentry_info* FUNC3 (struct dentry const*) ; 
 struct ceph_inode_info* FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(const struct dentry *dentry)
{
	struct ceph_dentry_info *di = FUNC3(dentry);
	struct inode *dir;
	struct ceph_inode_info *ci;
	int valid = 0;

	if (!di->lease_shared_gen)
		return 0;
	if (FUNC0(dentry))
		return 0;

	dir = FUNC5(dentry->d_parent);
	ci = FUNC4(dir);

	if (FUNC6(&ci->i_ceph_lock)) {
		if (FUNC2(&ci->i_shared_gen) == di->lease_shared_gen &&
		    FUNC1(ci, CEPH_CAP_FILE_SHARED, 0))
			valid = 1;
		FUNC7(&ci->i_ceph_lock);
	} else {
		valid = -EBUSY;
	}

	if (!valid)
		di->lease_shared_gen = 0;
	return valid;
}