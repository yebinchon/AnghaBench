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
struct TYPE_2__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_1__ desc; } ;
struct usb_hcd {int dummy; } ;
struct dwc2_hsotg {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,struct usb_host_endpoint*) ; 
 struct dwc2_hsotg* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct usb_hcd *hcd,
				     struct usb_host_endpoint *ep)
{
	struct dwc2_hsotg *hsotg = FUNC2(hcd);
	unsigned long flags;

	FUNC0(hsotg->dev,
		"DWC OTG HCD EP RESET: bEndpointAddress=0x%02x\n",
		ep->desc.bEndpointAddress);

	FUNC3(&hsotg->lock, flags);
	FUNC1(hsotg, ep);
	FUNC4(&hsotg->lock, flags);
}