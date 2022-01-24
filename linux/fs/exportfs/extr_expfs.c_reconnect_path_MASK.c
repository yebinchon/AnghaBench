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
struct vfsmount {TYPE_1__* mnt_sb; } ;
struct dentry {int d_flags; } ;
struct TYPE_2__ {struct dentry* s_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DCACHE_DISCONNECTED ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 struct dentry* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 struct dentry* FUNC8 (struct vfsmount*,struct dentry*,char*) ; 

__attribute__((used)) static int
FUNC9(struct vfsmount *mnt, struct dentry *target_dir, char *nbuf)
{
	struct dentry *dentry, *parent;

	dentry = FUNC5(target_dir);

	while (dentry->d_flags & DCACHE_DISCONNECTED) {
		FUNC0(dentry == mnt->mnt_sb->s_root);

		if (FUNC2(dentry))
			parent = FUNC8(mnt, dentry, nbuf);
		else
			parent = FUNC6(dentry);

		if (!parent)
			break;
		FUNC7(dentry);
		if (FUNC1(parent))
			return FUNC3(parent);
		dentry = parent;
	}
	FUNC7(dentry);
	FUNC4(target_dir);
	return 0;
}