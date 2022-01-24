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
struct dwc2_qtd {scalar_t__ isoc_frame_index; TYPE_2__* urb; scalar_t__ error_count; scalar_t__ complete_split; scalar_t__ isoc_split_offset; } ;
struct dwc2_qh {int next_active_frame; int start_active_frame; int num_hs_transfers; scalar_t__ ep_type; int ping_state; scalar_t__ ep_is_in; } ;
struct TYPE_3__ {int /*<<< orphan*/  uframe_sched; scalar_t__ host_dma; } ;
struct dwc2_hsotg {TYPE_1__ params; int /*<<< orphan*/  dev; } ;
struct dwc2_host_chan {scalar_t__ ep_type; struct dwc2_qh* qh; scalar_t__ ep_is_in; scalar_t__ complete_split; scalar_t__ do_split; } ;
struct TYPE_4__ {scalar_t__ packet_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC2_HC_XFER_NO_HALT_STATUS ; 
 int /*<<< orphan*/  DWC2_HC_XFER_NYET ; 
 int /*<<< orphan*/  DWC2_HC_XFER_URB_COMPLETE ; 
 int /*<<< orphan*/  DWC2_HC_XFER_XACT_ERR ; 
 int /*<<< orphan*/  HCINTMSK_NYET ; 
 scalar_t__ USB_ENDPOINT_XFER_INT ; 
 scalar_t__ USB_ENDPOINT_XFER_ISOC ; 
 scalar_t__ FUNC0 (struct dwc2_host_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC8 (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_qtd*) ; 
 int /*<<< orphan*/  FUNC9 (struct dwc2_hsotg*,struct dwc2_qtd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dwc2_hsotg*,struct dwc2_host_chan*,int,TYPE_2__*,struct dwc2_qtd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct dwc2_hsotg *hsotg,
			      struct dwc2_host_chan *chan, int chnum,
			      struct dwc2_qtd *qtd)
{
	if (FUNC0(chan))
		FUNC1(hsotg->dev, "--Host Channel %d Interrupt: NYET Received--\n",
			 chnum);

	/*
	 * NYET on CSPLIT
	 * re-do the CSPLIT immediately on non-periodic
	 */
	if (chan->do_split && chan->complete_split) {
		if (chan->ep_is_in && chan->ep_type == USB_ENDPOINT_XFER_ISOC &&
		    hsotg->params.host_dma) {
			qtd->complete_split = 0;
			qtd->isoc_split_offset = 0;
			qtd->isoc_frame_index++;
			if (qtd->urb &&
			    qtd->isoc_frame_index == qtd->urb->packet_count) {
				FUNC9(hsotg, qtd, 0);
				FUNC10(hsotg, chan, qtd,
						     DWC2_HC_XFER_URB_COMPLETE);
			} else {
				FUNC10(hsotg, chan, qtd,
						DWC2_HC_XFER_NO_HALT_STATUS);
			}
			goto handle_nyet_done;
		}

		if (chan->ep_type == USB_ENDPOINT_XFER_INT ||
		    chan->ep_type == USB_ENDPOINT_XFER_ISOC) {
			struct dwc2_qh *qh = chan->qh;
			bool past_end;

			if (!hsotg->params.uframe_sched) {
				int frnum = FUNC7(hsotg);

				/* Don't have num_hs_transfers; simple logic */
				past_end = FUNC5(frnum) !=
				     FUNC5(qh->next_active_frame);
			} else {
				int end_frnum;

				/*
				 * Figure out the end frame based on
				 * schedule.
				 *
				 * We don't want to go on trying again
				 * and again forever. Let's stop when
				 * we've done all the transfers that
				 * were scheduled.
				 *
				 * We're going to be comparing
				 * start_active_frame and
				 * next_active_frame, both of which
				 * are 1 before the time the packet
				 * goes on the wire, so that cancels
				 * out. Basically if had 1 transfer
				 * and we saw 1 NYET then we're done.
				 * We're getting a NYET here so if
				 * next >= (start + num_transfers)
				 * we're done. The complexity is that
				 * for all but ISOC_OUT we skip one
				 * slot.
				 */
				end_frnum = FUNC3(
					qh->start_active_frame,
					qh->num_hs_transfers);

				if (qh->ep_type != USB_ENDPOINT_XFER_ISOC ||
				    qh->ep_is_in)
					end_frnum =
					       FUNC3(end_frnum, 1);

				past_end = FUNC4(
					end_frnum, qh->next_active_frame);
			}

			if (past_end) {
				/* Treat this as a transaction error. */
#if 0
				/*
				 * Todo: Fix system performance so this can
				 * be treated as an error. Right now complete
				 * splits cannot be scheduled precisely enough
				 * due to other system activity, so this error
				 * occurs regularly in Slave mode.
				 */
				qtd->error_count++;
#endif
				qtd->complete_split = 0;
				FUNC6(hsotg, chan, qtd,
						  DWC2_HC_XFER_XACT_ERR);
				/* Todo: add support for isoc release */
				goto handle_nyet_done;
			}
		}

		FUNC6(hsotg, chan, qtd, DWC2_HC_XFER_NYET);
		goto handle_nyet_done;
	}

	chan->qh->ping_state = 1;
	qtd->error_count = 0;

	FUNC11(hsotg, chan, chnum, qtd->urb, qtd,
				  DWC2_HC_XFER_NYET);
	FUNC8(hsotg, chan, chnum, qtd);

	/*
	 * Halt the channel and re-start the transfer so the PING protocol
	 * will start
	 */
	FUNC6(hsotg, chan, qtd, DWC2_HC_XFER_NYET);

handle_nyet_done:
	FUNC2(hsotg, chnum, HCINTMSK_NYET);
}