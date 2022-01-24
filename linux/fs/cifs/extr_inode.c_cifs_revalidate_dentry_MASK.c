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
struct dentry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dentry*) ; 
 int FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct dentry*) ; 

int FUNC3(struct dentry *dentry)
{
	int rc;
	struct inode *inode = FUNC2(dentry);

	rc = FUNC0(dentry);
	if (rc)
		return rc;

	return FUNC1(inode);
}