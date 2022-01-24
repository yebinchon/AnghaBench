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
struct usb_hcd {int dummy; } ;
struct urb {TYPE_1__* ep; } ;
struct max3421_hcd {int /*<<< orphan*/  hien; struct urb* curr_urb; } ;
struct max3421_ep {int pkt_state; } ;
struct TYPE_2__ {struct max3421_ep* hcpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MAX3421_HI_HXFRDN_BIT ; 
 int MAX3421_HXFR_HS_IN ; 
 int MAX3421_HXFR_HS_OUT ; 
 int /*<<< orphan*/  MAX3421_REG_HXFR ; 
#define  PKT_STATE_SETUP 130 
#define  PKT_STATE_TERMINATE 129 
#define  PKT_STATE_TRANSFER 128 
 struct max3421_hcd* FUNC1 (struct usb_hcd*) ; 
 int FUNC2 (struct usb_hcd*,struct urb*) ; 
 int FUNC3 (struct usb_hcd*,struct urb*) ; 
 int FUNC4 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 

__attribute__((used)) static void
FUNC7(struct usb_hcd *hcd, int fast_retransmit)
{
	struct max3421_hcd *max3421_hcd = FUNC1(hcd);
	struct urb *urb = max3421_hcd->curr_urb;
	struct max3421_ep *max3421_ep;
	int cmd = -EINVAL;

	if (!urb)
		return;	/* nothing to do */

	max3421_ep = urb->ep->hcpriv;

	switch (max3421_ep->pkt_state) {
	case PKT_STATE_SETUP:
		cmd = FUNC2(hcd, urb);
		break;

	case PKT_STATE_TRANSFER:
		if (FUNC6(urb))
			cmd = FUNC3(hcd, urb);
		else
			cmd = FUNC4(hcd, urb, fast_retransmit);
		break;

	case PKT_STATE_TERMINATE:
		/*
		 * IN transfers are terminated with HS_OUT token,
		 * OUT transfers with HS_IN:
		 */
		if (FUNC6(urb))
			cmd = MAX3421_HXFR_HS_OUT;
		else
			cmd = MAX3421_HXFR_HS_IN;
		break;
	}

	if (cmd < 0)
		return;

	/* issue the command and wait for host-xfer-done interrupt: */

	FUNC5(hcd, MAX3421_REG_HXFR, cmd);
	max3421_hcd->hien |= FUNC0(MAX3421_HI_HXFRDN_BIT);
}