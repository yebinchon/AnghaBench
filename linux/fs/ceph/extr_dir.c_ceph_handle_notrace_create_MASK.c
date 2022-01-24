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
 int ESTALE ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 

int FUNC4(struct inode *dir, struct dentry *dentry)
{
	struct dentry *result = FUNC2(dir, dentry, 0);

	if (result && !FUNC0(result)) {
		/*
		 * We created the item, then did a lookup, and found
		 * it was already linked to another inode we already
		 * had in our cache (and thus got spliced). To not
		 * confuse VFS (especially when inode is a directory),
		 * we don't link our dentry to that inode, return an
		 * error instead.
		 *
		 * This event should be rare and it happens only when
		 * we talk to old MDS. Recent MDS does not send traceless
		 * reply for request that creates new inode.
		 */
		FUNC3(result);
		return -ESTALE;
	}
	return FUNC1(result);
}