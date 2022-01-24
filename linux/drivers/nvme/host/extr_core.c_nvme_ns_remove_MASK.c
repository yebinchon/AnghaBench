#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nvme_ns {TYPE_3__* ctrl; int /*<<< orphan*/  list; TYPE_4__* disk; int /*<<< orphan*/  queue; TYPE_2__* head; int /*<<< orphan*/  siblings; int /*<<< orphan*/  fault_inject; int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  namespaces_rwsem; TYPE_1__* subsys; } ;
struct TYPE_8__ {int /*<<< orphan*/  srcu; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int GENHD_FL_UP ; 
 int /*<<< orphan*/  NVME_NS_REMOVING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC11 (struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC12 (struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct nvme_ns *ns)
{
	if (FUNC15(NVME_NS_REMOVING, &ns->flags))
		return;

	FUNC9(&ns->fault_inject);

	FUNC7(&ns->ctrl->subsys->lock);
	FUNC6(&ns->siblings);
	FUNC8(&ns->ctrl->subsys->lock);
	FUNC13(); /* guarantee not available in head->list */
	FUNC11(ns);
	FUNC14(&ns->head->srcu); /* wait for concurrent submissions */

	if (ns->disk && ns->disk->flags & GENHD_FL_UP) {
		FUNC3(ns->disk);
		FUNC0(ns->queue);
		if (FUNC1(ns->disk))
			FUNC2(ns->disk);
	}

	FUNC4(&ns->ctrl->namespaces_rwsem);
	FUNC5(&ns->list);
	FUNC16(&ns->ctrl->namespaces_rwsem);

	FUNC10(ns);
	FUNC12(ns);
}