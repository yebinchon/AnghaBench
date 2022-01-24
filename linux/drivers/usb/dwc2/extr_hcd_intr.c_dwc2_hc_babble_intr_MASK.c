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
struct dwc2_qtd {int dummy; } ;
struct TYPE_2__ {scalar_t__ dma_desc_enable; } ;
struct dwc2_hsotg {TYPE_1__ params; int /*<<< orphan*/  dev; } ;
struct dwc2_host_chan {scalar_t__ ep_type; } ;
typedef  enum dwc2_halt_status { ____Placeholder_dwc2_halt_status } dwc2_halt_status ;

/* Variables and functions */
 int DWC2_HC_XFER_BABBLE_ERR ; 
 int /*<<< orphan*/  EOVERFLOW ; 
 int /*<<< orphan*/  HCINTMSK_BBLERR ; 
 scalar_t__ USB_ENDPOINT_XFER_ISOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*,struct dwc2_host_chan*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc2_hsotg*,struct dwc2_qtd*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_qtd*,int) ; 

__attribute__((used)) static void FUNC7(struct dwc2_hsotg *hsotg,
				struct dwc2_host_chan *chan, int chnum,
				struct dwc2_qtd *qtd)
{
	FUNC0(hsotg->dev, "--Host Channel %d Interrupt: Babble Error--\n",
		chnum);

	FUNC3(hsotg, chan, qtd);

	if (hsotg->params.dma_desc_enable) {
		FUNC4(hsotg, chan, chnum,
					    DWC2_HC_XFER_BABBLE_ERR);
		goto disable_int;
	}

	if (chan->ep_type != USB_ENDPOINT_XFER_ISOC) {
		FUNC5(hsotg, qtd, -EOVERFLOW);
		FUNC2(hsotg, chan, qtd, DWC2_HC_XFER_BABBLE_ERR);
	} else {
		enum dwc2_halt_status halt_status;

		halt_status = FUNC6(hsotg, chan, chnum,
						qtd, DWC2_HC_XFER_BABBLE_ERR);
		FUNC2(hsotg, chan, qtd, halt_status);
	}

disable_int:
	FUNC1(hsotg, chnum, HCINTMSK_BBLERR);
}