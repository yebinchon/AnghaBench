#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct of_changeset_entry {scalar_t__ action; int /*<<< orphan*/  node; TYPE_2__* np; } ;
struct TYPE_6__ {int /*<<< orphan*/  kref; } ;
struct TYPE_7__ {TYPE_1__ kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  OF_OVERLAY ; 
 int /*<<< orphan*/  OF_OVERLAY_FREE_CSET ; 
 scalar_t__ OF_RECONFIG_ATTACH_NODE ; 
 int /*<<< orphan*/  FUNC0 (struct of_changeset_entry*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(struct of_changeset_entry *ce)
{
	if (ce->action == OF_RECONFIG_ATTACH_NODE &&
	    FUNC3(ce->np, OF_OVERLAY)) {
		if (FUNC1(&ce->np->kobj.kref) > 1) {
			FUNC6("ERROR: memory leak, expected refcount 1 instead of %d, of_node_get()/of_node_put() unbalanced - destroy cset entry: attach overlay node %pOF\n",
			       FUNC1(&ce->np->kobj.kref), ce->np);
		} else {
			FUNC5(ce->np, OF_OVERLAY_FREE_CSET);
		}
	}

	FUNC4(ce->np);
	FUNC2(&ce->node);
	FUNC0(ce);
}