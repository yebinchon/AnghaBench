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
struct dentry {int /*<<< orphan*/  d_fsdata; } ;
struct debugfs_fsdata {int /*<<< orphan*/  active_users_drained; int /*<<< orphan*/  active_users; } ;

/* Variables and functions */
 struct debugfs_fsdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dentry *dentry)
{
	struct debugfs_fsdata *fsd = FUNC0(dentry->d_fsdata);

	if (FUNC2(&fsd->active_users))
		FUNC1(&fsd->active_users_drained);
}