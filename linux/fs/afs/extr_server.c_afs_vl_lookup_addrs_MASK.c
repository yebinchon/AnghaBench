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
typedef  int /*<<< orphan*/  uuid_t ;
struct key {int dummy; } ;
struct afs_vl_cursor {TYPE_1__* server; } ;
struct afs_cell {int dummy; } ;
struct afs_addr_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VLSERVER_FL_IS_YFS ; 
 int ERESTARTSYS ; 
 struct afs_addr_list* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct afs_vl_cursor*,struct afs_cell*,struct key*) ; 
 int FUNC2 (struct afs_vl_cursor*) ; 
 scalar_t__ FUNC3 (struct afs_vl_cursor*) ; 
 struct afs_addr_list* FUNC4 (struct afs_vl_cursor*,int /*<<< orphan*/  const*) ; 
 struct afs_addr_list* FUNC5 (struct afs_vl_cursor*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct afs_addr_list *FUNC7(struct afs_cell *cell,
						 struct key *key, const uuid_t *uuid)
{
	struct afs_vl_cursor vc;
	struct afs_addr_list *alist = NULL;
	int ret;

	ret = -ERESTARTSYS;
	if (FUNC1(&vc, cell, key)) {
		while (FUNC3(&vc)) {
			if (FUNC6(AFS_VLSERVER_FL_IS_YFS, &vc.server->flags))
				alist = FUNC5(&vc, uuid);
			else
				alist = FUNC4(&vc, uuid);
		}

		ret = FUNC2(&vc);
	}

	return ret < 0 ? FUNC0(ret) : alist;
}