#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct dwc2_qtd {scalar_t__ in_process; struct dwc2_qh* qh; } ;
struct dwc2_qh {int /*<<< orphan*/  qtd_list; int /*<<< orphan*/ * channel; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma_desc_enable; } ;
struct TYPE_4__ {scalar_t__ port_connect_status; } ;
struct TYPE_5__ {TYPE_1__ b; } ;
struct dwc2_hsotg {TYPE_3__ params; TYPE_2__ flags; int /*<<< orphan*/  dev; } ;
struct dwc2_hcd_urb {int /*<<< orphan*/ * priv; struct dwc2_qtd* qtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC2_HC_XFER_URB_DEQUEUE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,struct dwc2_qh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*,struct dwc2_qh*) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc2_hsotg*,struct dwc2_qtd*,struct dwc2_qh*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct dwc2_hsotg *hsotg,
				struct dwc2_hcd_urb *urb)
{
	struct dwc2_qh *qh;
	struct dwc2_qtd *urb_qtd;

	urb_qtd = urb->qtd;
	if (!urb_qtd) {
		FUNC0(hsotg->dev, "## Urb QTD is NULL ##\n");
		return -EINVAL;
	}

	qh = urb_qtd->qh;
	if (!qh) {
		FUNC0(hsotg->dev, "## Urb QTD QH is NULL ##\n");
		return -EINVAL;
	}

	urb->priv = NULL;

	if (urb_qtd->in_process && qh->channel) {
		FUNC1(hsotg, qh->channel);

		/* The QTD is in process (it has been assigned to a channel) */
		if (hsotg->flags.b.port_connect_status)
			/*
			 * If still connected (i.e. in host mode), halt the
			 * channel so it can be used for other transfers. If
			 * no longer connected, the host registers can't be
			 * written to halt the channel since the core is in
			 * device mode.
			 */
			FUNC2(hsotg, qh->channel,
				     DWC2_HC_XFER_URB_DEQUEUE);
	}

	/*
	 * Free the QTD and clean up the associated QH. Leave the QH in the
	 * schedule if it has any remaining QTDs.
	 */
	if (!hsotg->params.dma_desc_enable) {
		u8 in_process = urb_qtd->in_process;

		FUNC5(hsotg, urb_qtd, qh);
		if (in_process) {
			FUNC3(hsotg, qh, 0);
			qh->channel = NULL;
		} else if (FUNC6(&qh->qtd_list)) {
			FUNC4(hsotg, qh);
		}
	} else {
		FUNC5(hsotg, urb_qtd, qh);
	}

	return 0;
}