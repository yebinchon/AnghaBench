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
struct path {struct dentry* dentry; int /*<<< orphan*/  mnt; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int FUNC3 (struct path const*,int) ; 
 struct dentry* FUNC4 (struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 

__attribute__((used)) static int FUNC6(const struct path *path, bool rcu_walk)
{
	struct dentry *dentry = path->dentry;
	struct dentry *expiring;

	expiring = FUNC4(dentry, rcu_walk);
	if (FUNC0(expiring))
		return FUNC1(expiring);
	if (!expiring)
		return FUNC3(path, rcu_walk);
	else {
		const struct path this = { .mnt = path->mnt, .dentry = expiring };
		/*
		 * If we are racing with expire the request might not
		 * be quite complete, but the directory has been removed
		 * so it must have been successful, just wait for it.
		 */
		FUNC3(&this, 0);
		FUNC2(expiring);
		FUNC5(expiring);
	}
	return 0;
}