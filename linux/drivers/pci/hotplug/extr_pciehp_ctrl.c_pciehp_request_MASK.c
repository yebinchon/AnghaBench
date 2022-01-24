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
struct controller {TYPE_1__* pcie; int /*<<< orphan*/  pending_events; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct controller*) ; 
 int /*<<< orphan*/  pciehp_poll_mode ; 

void FUNC2(struct controller *ctrl, int action)
{
	FUNC0(action, &ctrl->pending_events);
	if (!pciehp_poll_mode)
		FUNC1(ctrl->pcie->irq, ctrl);
}