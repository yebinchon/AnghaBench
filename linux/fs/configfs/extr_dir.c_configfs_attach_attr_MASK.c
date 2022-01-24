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
struct inode {int /*<<< orphan*/ * i_fop; scalar_t__ i_size; } ;
struct dentry {int /*<<< orphan*/  d_fsdata; } ;
struct configfs_dirent {int s_type; struct dentry* s_dentry; struct configfs_attribute* s_element; } ;
struct configfs_attribute {int ca_mode; } ;

/* Variables and functions */
 int CONFIGFS_ITEM_BIN_ATTR ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC1 (struct inode*) ; 
 int S_IALLUGO ; 
 int S_IFREG ; 
 int /*<<< orphan*/  configfs_bin_file_operations ; 
 struct inode* FUNC2 (struct dentry*,int) ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int /*<<< orphan*/  configfs_file_operations ; 
 int /*<<< orphan*/  FUNC3 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC4 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct configfs_dirent * sd, struct dentry * dentry)
{
	struct configfs_attribute * attr = sd->s_element;
	struct inode *inode;

	FUNC6(&configfs_dirent_lock);
	dentry->d_fsdata = FUNC3(sd);
	sd->s_dentry = dentry;
	FUNC7(&configfs_dirent_lock);

	inode = FUNC2(dentry, (attr->ca_mode & S_IALLUGO) | S_IFREG);
	if (FUNC0(inode)) {
		FUNC4(sd);
		return FUNC1(inode);
	}
	if (sd->s_type & CONFIGFS_ITEM_BIN_ATTR) {
		inode->i_size = 0;
		inode->i_fop = &configfs_bin_file_operations;
	} else {
		inode->i_size = PAGE_SIZE;
		inode->i_fop = &configfs_file_operations;
	}
	FUNC5(dentry, inode);
	return 0;
}