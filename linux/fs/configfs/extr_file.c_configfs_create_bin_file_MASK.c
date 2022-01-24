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
typedef  int umode_t ;
struct dentry {int /*<<< orphan*/  d_inode; struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int /*<<< orphan*/  s_frag; } ;
struct TYPE_2__ {int ca_mode; } ;
struct configfs_bin_attribute {TYPE_1__ cb_attr; } ;
struct config_item {struct dentry* ci_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIGFS_ITEM_BIN_ATTR ; 
 int /*<<< orphan*/  I_MUTEX_NORMAL ; 
 int S_IALLUGO ; 
 int S_IFREG ; 
 int FUNC0 (struct configfs_dirent*,int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct config_item *item,
		const struct configfs_bin_attribute *bin_attr)
{
	struct dentry *dir = item->ci_dentry;
	struct configfs_dirent *parent_sd = dir->d_fsdata;
	umode_t mode = (bin_attr->cb_attr.ca_mode & S_IALLUGO) | S_IFREG;
	int error = 0;

	FUNC1(dir->d_inode, I_MUTEX_NORMAL);
	error = FUNC0(parent_sd, NULL, (void *) bin_attr, mode,
				     CONFIGFS_ITEM_BIN_ATTR, parent_sd->s_frag);
	FUNC2(dir->d_inode);

	return error;
}