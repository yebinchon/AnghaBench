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
struct coda_inode_info {int c_flags; int /*<<< orphan*/  c_lock; } ;

/* Variables and functions */
 int C_FLUSH ; 
 int C_PURGE ; 
 int C_VATTR ; 
 int ECHILD ; 
 struct coda_inode_info* FUNC0 (struct inode*) ; 
 unsigned int LOOKUP_RCU ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int) ; 
 int FUNC2 (struct dentry*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dentry *de, unsigned int flags)
{
	struct inode *inode;
	struct coda_inode_info *cii;

	if (flags & LOOKUP_RCU)
		return -ECHILD;

	inode = FUNC3(de);
	if (!inode || FUNC5(inode))
		goto out;
	if (FUNC4(inode))
		goto bad;

	cii = FUNC0(FUNC3(de));
	if (!(cii->c_flags & (C_PURGE | C_FLUSH)))
		goto out;

	FUNC6(de);

	/* propagate for a flush */
	if (cii->c_flags & C_FLUSH) 
		FUNC1(inode, C_FLUSH);

	if (FUNC2(de) > 1)
		/* pretend it's valid, but don't change the flags */
		goto out;

	/* clear the flags. */
	FUNC7(&cii->c_lock);
	cii->c_flags &= ~(C_VATTR | C_PURGE | C_FLUSH);
	FUNC8(&cii->c_lock);
bad:
	return 0;
out:
	return 1;
}