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
struct xhci_hcd {int quirks; struct xhci_virt_device** devs; } ;

/* Variables and functions */
 int XHCI_EP_LIMIT_QUIRK ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_slot_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,struct xhci_virt_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*,int) ; 
 struct xhci_slot_ctx* FUNC3 (struct xhci_hcd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct xhci_hcd *xhci, int slot_id)
{
	struct xhci_virt_device *virt_dev;
	struct xhci_slot_ctx *slot_ctx;

	virt_dev = xhci->devs[slot_id];
	if (!virt_dev)
		return;

	slot_ctx = FUNC3(xhci, virt_dev->out_ctx);
	FUNC0(slot_ctx);

	if (xhci->quirks & XHCI_EP_LIMIT_QUIRK)
		/* Delete default control endpoint resources */
		FUNC1(xhci, virt_dev, true);
	FUNC2(xhci, slot_id);
}