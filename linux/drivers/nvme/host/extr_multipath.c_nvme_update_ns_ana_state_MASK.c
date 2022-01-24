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
struct nvme_ns {TYPE_1__* head; int /*<<< orphan*/  ana_state; int /*<<< orphan*/  flags; int /*<<< orphan*/  ana_grpid; } ;
struct nvme_ana_group_desc {int /*<<< orphan*/  state; int /*<<< orphan*/  grpid; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_NS_ANA_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_ns*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nvme_ana_group_desc *desc,
		struct nvme_ns *ns)
{
	FUNC2(&ns->head->lock);
	ns->ana_grpid = FUNC1(desc->grpid);
	ns->ana_state = desc->state;
	FUNC0(NVME_NS_ANA_PENDING, &ns->flags);

	if (FUNC5(ns->ana_state))
		FUNC4(ns);
	FUNC3(&ns->head->lock);
}