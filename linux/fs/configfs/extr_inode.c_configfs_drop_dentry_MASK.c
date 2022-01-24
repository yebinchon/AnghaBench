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
struct dentry {int /*<<< orphan*/  d_lock; } ;
struct configfs_dirent {struct dentry* s_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct configfs_dirent * sd, struct dentry * parent)
{
	struct dentry * dentry = sd->s_dentry;

	if (dentry) {
		FUNC5(&dentry->d_lock);
		if (FUNC3(dentry)) {
			FUNC2(dentry);
			FUNC0(dentry);
			FUNC6(&dentry->d_lock);
			FUNC4(FUNC1(parent), dentry);
		} else
			FUNC6(&dentry->d_lock);
	}
}