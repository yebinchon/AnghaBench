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
typedef  int /*<<< orphan*/  umode_t ;
struct dentry {int /*<<< orphan*/  d_fsdata; } ;
struct configfs_fragment {int dummy; } ;
struct configfs_dirent {struct dentry* s_dentry; int /*<<< orphan*/  s_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct configfs_dirent*) ; 
 int FUNC1 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC2 (struct configfs_dirent*) ; 
 struct configfs_dirent* FUNC3 (struct configfs_dirent*,void*,int,struct configfs_fragment*) ; 

int FUNC4(struct configfs_dirent * parent_sd,
			 struct dentry * dentry, void * element,
			 umode_t mode, int type, struct configfs_fragment *frag)
{
	struct configfs_dirent * sd;

	sd = FUNC3(parent_sd, element, type, frag);
	if (FUNC0(sd))
		return FUNC1(sd);

	sd->s_mode = mode;
	sd->s_dentry = dentry;
	if (dentry)
		dentry->d_fsdata = FUNC2(sd);

	return 0;
}