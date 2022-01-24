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
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* mnt_root; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 TYPE_1__* debugfs_mount ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (char const*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

struct dentry *FUNC5(const char *name, struct dentry *parent)
{
	struct dentry *dentry;

	if (FUNC0(parent))
		return NULL;

	if (!parent)
		parent = debugfs_mount->mnt_root;

	dentry = FUNC3(name, parent, FUNC4(name));
	if (FUNC0(dentry))
		return NULL;
	if (!FUNC1(dentry)) {
		FUNC2(dentry);
		return NULL;
	}
	return dentry;
}