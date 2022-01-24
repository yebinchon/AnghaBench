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
struct nvme_ns_head {TYPE_1__* subsys; int /*<<< orphan*/  srcu; int /*<<< orphan*/ * current_path; } ;
struct nvme_ns {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  iopolicy; } ;

/* Variables and functions */
 scalar_t__ NVME_IOPOLICY_RR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct nvme_ns* FUNC1 (struct nvme_ns_head*,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ns*) ; 
 struct nvme_ns* FUNC4 (struct nvme_ns_head*,int,struct nvme_ns*) ; 
 struct nvme_ns* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

inline struct nvme_ns *FUNC7(struct nvme_ns_head *head)
{
	int node = FUNC2();
	struct nvme_ns *ns;

	ns = FUNC5(head->current_path[node], &head->srcu);
	if (FUNC0(head->subsys->iopolicy) == NVME_IOPOLICY_RR && ns)
		ns = FUNC4(head, node, ns);
	if (FUNC6(!ns || !FUNC3(ns)))
		ns = FUNC1(head, node);
	return ns;
}