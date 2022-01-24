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
struct dentry {int dummy; } ;
struct ceph_dentry_info {int dummy; } ;

/* Variables and functions */
 int DELETE ; 
 int EBUSY ; 
 int KEEP ; 
 int STOP ; 
 int TOUCH ; 
 scalar_t__ FUNC0 (struct ceph_dentry_info*) ; 
 int FUNC1 (struct dentry*) ; 
 struct ceph_dentry_info* FUNC2 (struct dentry*) ; 

__attribute__((used)) static int FUNC3(struct dentry *dentry, void *arg)
{
	struct ceph_dentry_info *di = FUNC2(dentry);
	int ret;

	if (FUNC0(di))
		return STOP;
	ret = FUNC1(dentry);
	if (ret == -EBUSY)
		return KEEP;
	if (ret > 0)
		return TOUCH;
	return DELETE;
}