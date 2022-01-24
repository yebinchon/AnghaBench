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
typedef  int umode_t ;
struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int /*<<< orphan*/  s_frag; } ;
struct configfs_attribute {int ca_mode; } ;
struct config_item {struct dentry* ci_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIGFS_ITEM_ATTR ; 
 int /*<<< orphan*/  I_MUTEX_NORMAL ; 
 int S_IALLUGO ; 
 int S_IFREG ; 
 int FUNC0 (struct configfs_dirent*,int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct config_item * item, const struct configfs_attribute * attr)
{
	struct dentry *dir = item->ci_dentry;
	struct configfs_dirent *parent_sd = dir->d_fsdata;
	umode_t mode = (attr->ca_mode & S_IALLUGO) | S_IFREG;
	int error = 0;

	FUNC2(FUNC1(dir), I_MUTEX_NORMAL);
	error = FUNC0(parent_sd, NULL, (void *) attr, mode,
				     CONFIGFS_ITEM_ATTR, parent_sd->s_frag);
	FUNC3(FUNC1(dir));

	return error;
}