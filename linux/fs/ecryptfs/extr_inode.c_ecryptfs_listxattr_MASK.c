#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dentry {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_6__ {TYPE_1__* i_op; } ;
struct TYPE_5__ {int (* listxattr ) (struct dentry*,char*,size_t) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 TYPE_2__* FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct dentry*,char*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC5(struct dentry *dentry, char *list, size_t size)
{
	int rc = 0;
	struct dentry *lower_dentry;

	lower_dentry = FUNC1(dentry);
	if (!FUNC0(lower_dentry)->i_op->listxattr) {
		rc = -EOPNOTSUPP;
		goto out;
	}
	FUNC2(FUNC0(lower_dentry));
	rc = FUNC0(lower_dentry)->i_op->listxattr(lower_dentry, list, size);
	FUNC3(FUNC0(lower_dentry));
out:
	return rc;
}