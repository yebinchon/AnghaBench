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
 struct dentry* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 

__attribute__((used)) static void FUNC5(struct inode *inode)
{
	struct dentry *dn, *prev = NULL;

	FUNC3("invalidate_aliases inode %p\n", inode);
	FUNC2(inode);
	/*
	 * For non-directory inode, d_find_alias() only returns
	 * hashed dentry. After calling d_invalidate(), the
	 * dentry becomes unhashed.
	 *
	 * For directory inode, d_find_alias() can return
	 * unhashed dentry. But directory inode should have
	 * one alias at most.
	 */
	while ((dn = FUNC0(inode))) {
		if (dn == prev) {
			FUNC4(dn);
			break;
		}
		FUNC1(dn);
		if (prev)
			FUNC4(prev);
		prev = dn;
	}
	if (prev)
		FUNC4(prev);
}