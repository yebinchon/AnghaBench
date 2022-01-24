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
struct dwc2_qh {scalar_t__ desc_list; scalar_t__ ntd; struct dwc2_host_chan* channel; } ;
struct TYPE_2__ {scalar_t__ uframe_sched; } ;
struct dwc2_hsotg {int /*<<< orphan*/  free_hc_list; int /*<<< orphan*/  available_host_channels; int /*<<< orphan*/  non_periodic_channels; TYPE_1__ params; } ;
struct dwc2_host_chan {int /*<<< orphan*/ * qh; int /*<<< orphan*/  hc_list_entry; } ;
struct dwc2_dma_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc2_hsotg*,struct dwc2_host_chan*) ; 
 int FUNC1 (struct dwc2_qh*) ; 
 scalar_t__ FUNC2 (struct dwc2_qh*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,struct dwc2_qh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct dwc2_hsotg *hsotg,
				      struct dwc2_qh *qh)
{
	struct dwc2_host_chan *chan = qh->channel;

	if (FUNC2(qh)) {
		if (hsotg->params.uframe_sched)
			hsotg->available_host_channels++;
		else
			hsotg->non_periodic_channels--;
	} else {
		FUNC3(hsotg, qh, 0);
		hsotg->available_host_channels++;
	}

	/*
	 * The condition is added to prevent double cleanup try in case of
	 * device disconnect. See channel cleanup in dwc2_hcd_disconnect().
	 */
	if (chan->qh) {
		if (!FUNC6(&chan->hc_list_entry))
			FUNC5(&chan->hc_list_entry);
		FUNC0(hsotg, chan);
		FUNC4(&chan->hc_list_entry, &hsotg->free_hc_list);
		chan->qh = NULL;
	}

	qh->channel = NULL;
	qh->ntd = 0;

	if (qh->desc_list)
		FUNC7(qh->desc_list, 0, sizeof(struct dwc2_dma_desc) *
		       FUNC1(qh));
}