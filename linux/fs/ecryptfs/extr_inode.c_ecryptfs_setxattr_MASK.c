#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {int i_opflags; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int IOP_XATTR ; 
 TYPE_1__* FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,TYPE_1__*) ; 
 int FUNC3 (struct dentry*,char const*,void const*,size_t,int) ; 

int
FUNC4(struct dentry *dentry, struct inode *inode,
		  const char *name, const void *value,
		  size_t size, int flags)
{
	int rc;
	struct dentry *lower_dentry;

	lower_dentry = FUNC1(dentry);
	if (!(FUNC0(lower_dentry)->i_opflags & IOP_XATTR)) {
		rc = -EOPNOTSUPP;
		goto out;
	}
	rc = FUNC3(lower_dentry, name, value, size, flags);
	if (!rc && inode)
		FUNC2(inode, FUNC0(lower_dentry));
out:
	return rc;
}