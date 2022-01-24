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
struct xhci_virt_ep {int ep_state; int /*<<< orphan*/ * stream_info; } ;
struct xhci_virt_device {struct xhci_virt_ep* eps; } ;
struct xhci_hcd {int dummy; } ;

/* Variables and functions */
 int EP_HAS_STREAMS ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct xhci_hcd *xhci,
	struct xhci_virt_device *vdev, int i)
{
	struct xhci_virt_ep *ep = &vdev->eps[i];

	if (ep->ep_state & EP_HAS_STREAMS) {
		FUNC2(xhci, "WARN: endpoint 0x%02x has streams on set_interface, freeing streams.\n",
				FUNC1(i));
		FUNC0(xhci, ep->stream_info);
		ep->stream_info = NULL;
		ep->ep_state &= ~EP_HAS_STREAMS;
	}
}