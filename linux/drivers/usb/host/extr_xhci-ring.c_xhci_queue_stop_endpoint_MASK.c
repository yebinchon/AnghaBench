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
typedef  int u32 ;
struct xhci_hcd {int dummy; } ;
struct xhci_command {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  TRB_STOP_RING ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xhci_hcd*,struct xhci_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int FUNC5(struct xhci_hcd *xhci, struct xhci_command *cmd,
			     int slot_id, unsigned int ep_index, int suspend)
{
	u32 trb_slot_id = FUNC1(slot_id);
	u32 trb_ep_index = FUNC0(ep_index);
	u32 type = FUNC3(TRB_STOP_RING);
	u32 trb_suspend = FUNC2(suspend);

	return FUNC4(xhci, cmd, 0, 0, 0,
			trb_slot_id | trb_ep_index | type | trb_suspend, false);
}