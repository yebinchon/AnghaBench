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
struct dwc2_hsotg {int /*<<< orphan*/  periodic_sched_queued; int /*<<< orphan*/  periodic_sched_assigned; int /*<<< orphan*/  periodic_sched_ready; int /*<<< orphan*/  periodic_sched_inactive; int /*<<< orphan*/  non_periodic_sched_active; int /*<<< orphan*/  non_periodic_sched_waiting; int /*<<< orphan*/  non_periodic_sched_inactive; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc2_hsotg*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct dwc2_hsotg *hsotg)
{
	FUNC0(hsotg, &hsotg->non_periodic_sched_inactive);
	FUNC0(hsotg, &hsotg->non_periodic_sched_waiting);
	FUNC0(hsotg, &hsotg->non_periodic_sched_active);
	FUNC0(hsotg, &hsotg->periodic_sched_inactive);
	FUNC0(hsotg, &hsotg->periodic_sched_ready);
	FUNC0(hsotg, &hsotg->periodic_sched_assigned);
	FUNC0(hsotg, &hsotg->periodic_sched_queued);
}