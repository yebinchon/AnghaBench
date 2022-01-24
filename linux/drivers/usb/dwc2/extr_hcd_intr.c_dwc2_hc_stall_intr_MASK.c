#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dwc2_qtd {struct dwc2_hcd_urb* urb; } ;
struct TYPE_3__ {scalar_t__ dma_desc_enable; } ;
struct dwc2_hsotg {TYPE_1__ params; int /*<<< orphan*/  dev; } ;
struct dwc2_host_chan {TYPE_2__* qh; } ;
struct dwc2_hcd_urb {int /*<<< orphan*/  pipe_info; } ;
struct TYPE_4__ {scalar_t__ data_toggle; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC2_HC_XFER_STALL ; 
 int /*<<< orphan*/  EPIPE ; 
 int /*<<< orphan*/  HCINTMSK_STALL ; 
 int USB_ENDPOINT_XFER_BULK ; 
 int USB_ENDPOINT_XFER_CONTROL ; 
 int USB_ENDPOINT_XFER_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,struct dwc2_host_chan*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc2_hsotg*,struct dwc2_qtd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dwc2_hsotg *hsotg,
			       struct dwc2_host_chan *chan, int chnum,
			       struct dwc2_qtd *qtd)
{
	struct dwc2_hcd_urb *urb = qtd->urb;
	int pipe_type;

	FUNC0(hsotg->dev, "--Host Channel %d Interrupt: STALL Received--\n",
		chnum);

	if (hsotg->params.dma_desc_enable) {
		FUNC3(hsotg, chan, chnum,
					    DWC2_HC_XFER_STALL);
		goto handle_stall_done;
	}

	if (!urb)
		goto handle_stall_halt;

	pipe_type = FUNC4(&urb->pipe_info);

	if (pipe_type == USB_ENDPOINT_XFER_CONTROL)
		FUNC5(hsotg, qtd, -EPIPE);

	if (pipe_type == USB_ENDPOINT_XFER_BULK ||
	    pipe_type == USB_ENDPOINT_XFER_INT) {
		FUNC5(hsotg, qtd, -EPIPE);
		/*
		 * USB protocol requires resetting the data toggle for bulk
		 * and interrupt endpoints when a CLEAR_FEATURE(ENDPOINT_HALT)
		 * setup command is issued to the endpoint. Anticipate the
		 * CLEAR_FEATURE command since a STALL has occurred and reset
		 * the data toggle now.
		 */
		chan->qh->data_toggle = 0;
	}

handle_stall_halt:
	FUNC2(hsotg, chan, qtd, DWC2_HC_XFER_STALL);

handle_stall_done:
	FUNC1(hsotg, chnum, HCINTMSK_STALL);
}