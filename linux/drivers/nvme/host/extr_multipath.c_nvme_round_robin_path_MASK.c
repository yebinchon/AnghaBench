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
struct nvme_ns_head {int /*<<< orphan*/ * current_path; int /*<<< orphan*/  list; } ;
struct nvme_ns {scalar_t__ ana_state; } ;

/* Variables and functions */
 scalar_t__ NVME_ANA_NONOPTIMIZED ; 
 scalar_t__ NVME_ANA_OPTIMIZED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct nvme_ns* FUNC1 (struct nvme_ns_head*,struct nvme_ns*) ; 
 scalar_t__ FUNC2 (struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nvme_ns*) ; 

__attribute__((used)) static struct nvme_ns *FUNC4(struct nvme_ns_head *head,
		int node, struct nvme_ns *old)
{
	struct nvme_ns *ns, *found, *fallback = NULL;

	if (FUNC0(&head->list)) {
		if (FUNC2(old))
			return NULL;
		return old;
	}

	for (ns = FUNC1(head, old);
	     ns != old;
	     ns = FUNC1(head, ns)) {
		if (FUNC2(ns))
			continue;

		if (ns->ana_state == NVME_ANA_OPTIMIZED) {
			found = ns;
			goto out;
		}
		if (ns->ana_state == NVME_ANA_NONOPTIMIZED)
			fallback = ns;
	}

	if (!fallback)
		return NULL;
	found = fallback;
out:
	FUNC3(head->current_path[node], found);
	return found;
}