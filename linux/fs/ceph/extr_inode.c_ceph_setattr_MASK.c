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
struct inode {int /*<<< orphan*/  i_size; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int /*<<< orphan*/  ia_mode; } ;
struct dentry {int dummy; } ;
struct ceph_fs_client {int /*<<< orphan*/  max_file_size; } ;

/* Variables and functions */
 int ATTR_MODE ; 
 int ATTR_SIZE ; 
 scalar_t__ CEPH_NOSNAP ; 
 int EDQUOT ; 
 int EFBIG ; 
 int EROFS ; 
 int FUNC0 (struct inode*,struct iattr*) ; 
 struct ceph_fs_client* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dentry*,struct iattr*) ; 

int FUNC8(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = FUNC4(dentry);
	struct ceph_fs_client *fsc = FUNC1(inode);
	int err;

	if (FUNC3(inode) != CEPH_NOSNAP)
		return -EROFS;

	err = FUNC7(dentry, attr);
	if (err != 0)
		return err;

	if ((attr->ia_valid & ATTR_SIZE) &&
	    attr->ia_size > FUNC5(inode->i_size, fsc->max_file_size))
		return -EFBIG;

	if ((attr->ia_valid & ATTR_SIZE) &&
	    FUNC2(inode, attr->ia_size))
		return -EDQUOT;

	err = FUNC0(inode, attr);

	if (err >= 0 && (attr->ia_valid & ATTR_MODE))
		err = FUNC6(inode, attr->ia_mode);

	return err;
}