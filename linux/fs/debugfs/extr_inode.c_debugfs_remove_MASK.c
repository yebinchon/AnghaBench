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
struct dentry {struct dentry* d_parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  debugfs_mount ; 
 int /*<<< orphan*/  debugfs_mount_count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(struct dentry *dentry)
{
	struct dentry *parent;
	int ret;

	if (FUNC0(dentry))
		return;

	parent = dentry->d_parent;
	FUNC3(FUNC2(parent));
	ret = FUNC1(dentry, parent);
	FUNC4(FUNC2(parent));
	if (!ret)
		FUNC5(&debugfs_mount, &debugfs_mount_count);
}