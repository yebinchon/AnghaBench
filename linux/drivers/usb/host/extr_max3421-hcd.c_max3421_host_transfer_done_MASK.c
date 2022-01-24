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
typedef  size_t u8 ;
struct usb_hcd {int dummy; } ;
struct urb {int /*<<< orphan*/  pipe; int /*<<< orphan*/  transfer_buffer_length; TYPE_1__* ep; } ;
struct max3421_hcd {int hien; int urb_done; int /*<<< orphan*/ * err_stat; struct urb* curr_urb; } ;
struct max3421_ep {int pkt_state; scalar_t__ retries; scalar_t__ naks; } ;
struct TYPE_2__ {struct max3421_ep* hcpriv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX3421_HI_HXFRDN_BIT ; 
 int /*<<< orphan*/  MAX3421_HI_RCVDAV_BIT ; 
 size_t MAX3421_HRSL_OK ; 
 size_t MAX3421_HRSL_RESULT_MASK ; 
 int /*<<< orphan*/  MAX3421_REG_HRSL ; 
 int /*<<< orphan*/  PIPE_CONTROL ; 
#define  PKT_STATE_SETUP 130 
#define  PKT_STATE_TERMINATE 129 
#define  PKT_STATE_TRANSFER 128 
 struct max3421_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_hcd*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_hcd*,struct urb*) ; 
 int FUNC5 (struct usb_hcd*,struct urb*) ; 
 size_t FUNC6 (struct usb_hcd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 

__attribute__((used)) static void
FUNC10(struct usb_hcd *hcd)
{
	struct max3421_hcd *max3421_hcd = FUNC1(hcd);
	struct urb *urb = max3421_hcd->curr_urb;
	struct max3421_ep *max3421_ep;
	u8 result_code, hrsl;
	int urb_done = 0;

	max3421_hcd->hien &= ~(FUNC0(MAX3421_HI_HXFRDN_BIT) |
			       FUNC0(MAX3421_HI_RCVDAV_BIT));

	hrsl = FUNC6(hcd, MAX3421_REG_HRSL);
	result_code = hrsl & MAX3421_HRSL_RESULT_MASK;

#ifdef DEBUG
	++max3421_hcd->err_stat[result_code];
#endif

	max3421_ep = urb->ep->hcpriv;

	if (FUNC7(result_code != MAX3421_HRSL_OK)) {
		FUNC2(hcd, hrsl);
		return;
	}

	max3421_ep->naks = 0;
	max3421_ep->retries = 0;
	switch (max3421_ep->pkt_state) {

	case PKT_STATE_SETUP:
		if (urb->transfer_buffer_length > 0)
			max3421_ep->pkt_state = PKT_STATE_TRANSFER;
		else
			max3421_ep->pkt_state = PKT_STATE_TERMINATE;
		break;

	case PKT_STATE_TRANSFER:
		if (FUNC9(urb))
			urb_done = FUNC4(hcd, urb);
		else
			urb_done = FUNC5(hcd, urb);
		if (urb_done > 0 && FUNC8(urb->pipe) == PIPE_CONTROL) {
			/*
			 * We aren't really done - we still need to
			 * terminate the control transfer:
			 */
			max3421_hcd->urb_done = urb_done = 0;
			max3421_ep->pkt_state = PKT_STATE_TERMINATE;
		}
		break;

	case PKT_STATE_TERMINATE:
		urb_done = 1;
		break;
	}

	if (urb_done)
		max3421_hcd->urb_done = urb_done;
	else
		FUNC3(hcd, 0);
}