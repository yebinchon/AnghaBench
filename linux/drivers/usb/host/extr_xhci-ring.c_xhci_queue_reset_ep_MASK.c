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
typedef  enum xhci_ep_reset_type { ____Placeholder_xhci_ep_reset_type } xhci_ep_reset_type ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int EP_SOFT_RESET ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  TRB_RESET_EP ; 
 int TRB_TSP ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xhci_hcd*,struct xhci_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int FUNC4(struct xhci_hcd *xhci, struct xhci_command *cmd,
			int slot_id, unsigned int ep_index,
			enum xhci_ep_reset_type reset_type)
{
	u32 trb_slot_id = FUNC1(slot_id);
	u32 trb_ep_index = FUNC0(ep_index);
	u32 type = FUNC2(TRB_RESET_EP);

	if (reset_type == EP_SOFT_RESET)
		type |= TRB_TSP;

	return FUNC3(xhci, cmd, 0, 0, 0,
			trb_slot_id | trb_ep_index | type, false);
}