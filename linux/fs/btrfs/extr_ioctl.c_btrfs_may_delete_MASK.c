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
struct dentry {int d_flags; struct dentry* d_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_TYPE_CHILD_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DCACHE_NFSFS_RENAMED ; 
 int EBUSY ; 
 int EISDIR ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int EPERM ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int MAY_EXEC ; 
 int MAY_WRITE ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct inode*,struct inode*) ; 
 struct inode* FUNC8 (struct dentry*) ; 
 scalar_t__ FUNC9 (struct dentry*) ; 
 scalar_t__ FUNC10 (struct dentry*) ; 
 int FUNC11 (struct inode*,int) ; 

__attribute__((used)) static int FUNC12(struct inode *dir, struct dentry *victim, int isdir)
{
	int error;

	if (FUNC10(victim))
		return -ENOENT;

	FUNC0(FUNC8(victim->d_parent) != dir);
	FUNC6(dir, victim, AUDIT_TYPE_CHILD_DELETE);

	error = FUNC11(dir, MAY_WRITE | MAY_EXEC);
	if (error)
		return error;
	if (FUNC1(dir))
		return -EPERM;
	if (FUNC7(dir, FUNC8(victim)) || FUNC1(FUNC8(victim)) ||
	    FUNC3(FUNC8(victim)) || FUNC5(FUNC8(victim)))
		return -EPERM;
	if (isdir) {
		if (!FUNC9(victim))
			return -ENOTDIR;
		if (FUNC4(victim))
			return -EBUSY;
	} else if (FUNC9(victim))
		return -EISDIR;
	if (FUNC2(dir))
		return -ENOENT;
	if (victim->d_flags & DCACHE_NFSFS_RENAMED)
		return -EBUSY;
	return 0;
}