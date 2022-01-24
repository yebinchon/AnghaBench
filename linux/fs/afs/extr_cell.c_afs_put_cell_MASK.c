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
typedef  scalar_t__ time64_t ;
struct afs_net {int dummy; } ;
struct afs_cell {int /*<<< orphan*/  usage; TYPE_1__* vl_servers; scalar_t__ last_inactive; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {scalar_t__ nr_servers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ afs_cell_gc_delay ; 
 int /*<<< orphan*/  FUNC1 (struct afs_net*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 

void FUNC4(struct afs_net *net, struct afs_cell *cell)
{
	time64_t now, expire_delay;

	if (!cell)
		return;

	FUNC0("%s", cell->name);

	now = FUNC3();
	cell->last_inactive = now;
	expire_delay = 0;
	if (cell->vl_servers->nr_servers)
		expire_delay = afs_cell_gc_delay;

	if (FUNC2(&cell->usage) > 1)
		return;

	/* 'cell' may now be garbage collected. */
	FUNC1(net, expire_delay);
}