#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvme_ns {TYPE_1__* head; int /*<<< orphan*/  ana_state; TYPE_2__* ctrl; int /*<<< orphan*/  ana_grpid; } ;
struct nvme_id_ns {int /*<<< orphan*/  anagrpid; } ;
struct TYPE_5__ {int /*<<< orphan*/  ana_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_ANA_OPTIMIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct nvme_ns*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_set_ns_ana_state ; 

void FUNC6(struct nvme_ns *ns, struct nvme_id_ns *id)
{
	if (FUNC3(ns->ctrl)) {
		FUNC1(&ns->ctrl->ana_lock);
		ns->ana_grpid = FUNC0(id->anagrpid);
		FUNC5(ns->ctrl, ns, nvme_set_ns_ana_state);
		FUNC2(&ns->ctrl->ana_lock);
	} else {
		FUNC1(&ns->head->lock);
		ns->ana_state = NVME_ANA_OPTIMIZED; 
		FUNC4(ns);
		FUNC2(&ns->head->lock);
	}
}