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
struct nvme_ns {int /*<<< orphan*/  disk; int /*<<< orphan*/  queue; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_NS_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct nvme_ns *ns)
{
	/*
	 * Revalidating a dead namespace sets capacity to 0. This will end
	 * buffered writers dirtying pages that can't be synced.
	 */
	if (!ns->disk || FUNC3(NVME_NS_DEAD, &ns->flags))
		return;
	FUNC1(ns->queue);
	/* Forcibly unquiesce queues to avoid blocking dispatch */
	FUNC0(ns->queue);
	/*
	 * Revalidate after unblocking dispatchers that may be holding bd_butex
	 */
	FUNC2(ns->disk);
}