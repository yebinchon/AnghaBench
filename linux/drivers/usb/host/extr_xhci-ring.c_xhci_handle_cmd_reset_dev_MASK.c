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
struct xhci_virt_device {int /*<<< orphan*/  out_ctx; } ;
struct xhci_slot_ctx {int dummy; } ;
struct xhci_hcd {struct xhci_virt_device** devs; } ;
struct xhci_event_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xhci_slot_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,char*) ; 
 struct xhci_slot_ctx* FUNC2 (struct xhci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,char*,int) ; 

__attribute__((used)) static void FUNC4(struct xhci_hcd *xhci, int slot_id,
		struct xhci_event_cmd *event)
{
	struct xhci_virt_device *vdev;
	struct xhci_slot_ctx *slot_ctx;

	vdev = xhci->devs[slot_id];
	slot_ctx = FUNC2(xhci, vdev->out_ctx);
	FUNC0(slot_ctx);

	FUNC1(xhci, "Completed reset device command.\n");
	if (!xhci->devs[slot_id])
		FUNC3(xhci, "Reset device command completion "
				"for disabled slot %u\n", slot_id);
}