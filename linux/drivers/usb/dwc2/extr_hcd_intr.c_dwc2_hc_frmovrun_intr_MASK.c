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
struct dwc2_qtd {TYPE_1__* urb; } ;
struct dwc2_hsotg {int /*<<< orphan*/  dev; } ;
struct dwc2_host_chan {int dummy; } ;
typedef  enum dwc2_halt_status { ____Placeholder_dwc2_halt_status } dwc2_halt_status ;
struct TYPE_2__ {int /*<<< orphan*/  pipe_info; } ;

/* Variables and functions */
 int DWC2_HC_XFER_FRAME_OVERRUN ; 
 int /*<<< orphan*/  HCINTMSK_FRMOVRUN ; 
#define  USB_ENDPOINT_XFER_BULK 131 
#define  USB_ENDPOINT_XFER_CONTROL 130 
#define  USB_ENDPOINT_XFER_INT 129 
#define  USB_ENDPOINT_XFER_ISOC 128 
 scalar_t__ FUNC0 (struct dwc2_host_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_qtd*,int) ; 

__attribute__((used)) static void FUNC7(struct dwc2_hsotg *hsotg,
				  struct dwc2_host_chan *chan, int chnum,
				  struct dwc2_qtd *qtd)
{
	enum dwc2_halt_status halt_status;

	if (FUNC0(chan))
		FUNC1(hsotg->dev, "--Host Channel %d Interrupt: Frame Overrun--\n",
			chnum);

	FUNC4(hsotg, chan, qtd);

	switch (FUNC5(&qtd->urb->pipe_info)) {
	case USB_ENDPOINT_XFER_CONTROL:
	case USB_ENDPOINT_XFER_BULK:
		break;
	case USB_ENDPOINT_XFER_INT:
		FUNC3(hsotg, chan, qtd, DWC2_HC_XFER_FRAME_OVERRUN);
		break;
	case USB_ENDPOINT_XFER_ISOC:
		halt_status = FUNC6(hsotg, chan, chnum,
					qtd, DWC2_HC_XFER_FRAME_OVERRUN);
		FUNC3(hsotg, chan, qtd, halt_status);
		break;
	}

	FUNC2(hsotg, chnum, HCINTMSK_FRMOVRUN);
}