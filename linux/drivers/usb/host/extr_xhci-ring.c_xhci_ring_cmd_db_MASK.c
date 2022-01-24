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
struct xhci_hcd {int cmd_ring_state; TYPE_1__* dba; } ;
struct TYPE_2__ {int /*<<< orphan*/ * doorbell; } ;

/* Variables and functions */
 int CMD_RING_STATE_RUNNING ; 
 int /*<<< orphan*/  DB_VALUE_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*,char*) ; 

void FUNC3(struct xhci_hcd *xhci)
{
	if (!(xhci->cmd_ring_state & CMD_RING_STATE_RUNNING))
		return;

	FUNC2(xhci, "// Ding dong!\n");
	FUNC1(DB_VALUE_HOST, &xhci->dba->doorbell[0]);
	/* Flush PCI posted writes */
	FUNC0(&xhci->dba->doorbell[0]);
}