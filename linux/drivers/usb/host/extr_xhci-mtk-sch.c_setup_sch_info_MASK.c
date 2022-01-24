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
typedef  int u32 ;
struct xhci_ep_ctx {int /*<<< orphan*/  tx_info; int /*<<< orphan*/  ep_info; int /*<<< orphan*/  ep_info2; } ;
struct usb_device {scalar_t__ speed; } ;
struct mu3h_sch_ep_info {int* bw_budget_table; int esit; int ep_type; int maxpkt; int burst_mode; int repeat; int cs_count; int num_budget_microframes; int pkts; int bw_cost_per_microframe; scalar_t__ offset; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int,int) ; 
 int FS_PAYLOAD_MAX ; 
 int INT_IN_EP ; 
 int INT_OUT_EP ; 
 int ISOC_IN_EP ; 
 int ISOC_OUT_EP ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int TT_MICROFRAMES_MAX ; 
 scalar_t__ USB_SPEED_HIGH ; 
 scalar_t__ USB_SPEED_SUPER ; 
 int FUNC7 (struct xhci_ep_ctx*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct usb_device *udev,
		struct xhci_ep_ctx *ep_ctx, struct mu3h_sch_ep_info *sch_ep)
{
	u32 ep_type;
	u32 maxpkt;
	u32 max_burst;
	u32 mult;
	u32 esit_pkts;
	u32 max_esit_payload;
	u32 *bwb_table = sch_ep->bw_budget_table;
	int i;

	ep_type = FUNC1(FUNC9(ep_ctx->ep_info2));
	maxpkt = FUNC6(FUNC9(ep_ctx->ep_info2));
	max_burst = FUNC2(FUNC9(ep_ctx->ep_info2));
	mult = FUNC0(FUNC9(ep_ctx->ep_info));
	max_esit_payload =
		(FUNC4(
			FUNC9(ep_ctx->ep_info)) << 16) |
		 FUNC3(FUNC9(ep_ctx->tx_info));

	sch_ep->esit = FUNC7(ep_ctx);
	sch_ep->ep_type = ep_type;
	sch_ep->maxpkt = maxpkt;
	sch_ep->offset = 0;
	sch_ep->burst_mode = 0;
	sch_ep->repeat = 0;

	if (udev->speed == USB_SPEED_HIGH) {
		sch_ep->cs_count = 0;

		/*
		 * usb_20 spec section5.9
		 * a single microframe is enough for HS synchromous endpoints
		 * in a interval
		 */
		sch_ep->num_budget_microframes = 1;

		/*
		 * xHCI spec section6.2.3.4
		 * @max_burst is the number of additional transactions
		 * opportunities per microframe
		 */
		sch_ep->pkts = max_burst + 1;
		sch_ep->bw_cost_per_microframe = maxpkt * sch_ep->pkts;
		bwb_table[0] = sch_ep->bw_cost_per_microframe;
	} else if (udev->speed >= USB_SPEED_SUPER) {
		/* usb3_r1 spec section4.4.7 & 4.4.8 */
		sch_ep->cs_count = 0;
		sch_ep->burst_mode = 1;
		/*
		 * some device's (d)wBytesPerInterval is set as 0,
		 * then max_esit_payload is 0, so evaluate esit_pkts from
		 * mult and burst
		 */
		esit_pkts = FUNC5(max_esit_payload, maxpkt);
		if (esit_pkts == 0)
			esit_pkts = (mult + 1) * (max_burst + 1);

		if (ep_type == INT_IN_EP || ep_type == INT_OUT_EP) {
			sch_ep->pkts = esit_pkts;
			sch_ep->num_budget_microframes = 1;
			bwb_table[0] = maxpkt * sch_ep->pkts;
		}

		if (ep_type == ISOC_IN_EP || ep_type == ISOC_OUT_EP) {
			u32 remainder;

			if (sch_ep->esit == 1)
				sch_ep->pkts = esit_pkts;
			else if (esit_pkts <= sch_ep->esit)
				sch_ep->pkts = 1;
			else
				sch_ep->pkts = FUNC10(esit_pkts)
					/ sch_ep->esit;

			sch_ep->num_budget_microframes =
				FUNC5(esit_pkts, sch_ep->pkts);

			sch_ep->repeat = !!(sch_ep->num_budget_microframes > 1);
			sch_ep->bw_cost_per_microframe = maxpkt * sch_ep->pkts;

			remainder = sch_ep->bw_cost_per_microframe;
			remainder *= sch_ep->num_budget_microframes;
			remainder -= (maxpkt * esit_pkts);
			for (i = 0; i < sch_ep->num_budget_microframes - 1; i++)
				bwb_table[i] = sch_ep->bw_cost_per_microframe;

			/* last one <= bw_cost_per_microframe */
			bwb_table[i] = remainder;
		}
	} else if (FUNC8(udev->speed)) {
		sch_ep->pkts = 1; /* at most one packet for each microframe */

		/*
		 * num_budget_microframes and cs_count will be updated when
		 * check TT for INT_OUT_EP, ISOC/INT_IN_EP type
		 */
		sch_ep->cs_count = FUNC5(maxpkt, FS_PAYLOAD_MAX);
		sch_ep->num_budget_microframes = sch_ep->cs_count;
		sch_ep->bw_cost_per_microframe =
			(maxpkt < FS_PAYLOAD_MAX) ? maxpkt : FS_PAYLOAD_MAX;

		/* init budget table */
		if (ep_type == ISOC_OUT_EP) {
			for (i = 0; i < sch_ep->num_budget_microframes; i++)
				bwb_table[i] =	sch_ep->bw_cost_per_microframe;
		} else if (ep_type == INT_OUT_EP) {
			/* only first one consumes bandwidth, others as zero */
			bwb_table[0] = sch_ep->bw_cost_per_microframe;
		} else { /* INT_IN_EP or ISOC_IN_EP */
			bwb_table[0] = 0; /* start split */
			bwb_table[1] = 0; /* idle */
			/*
			 * due to cs_count will be updated according to cs
			 * position, assign all remainder budget array
			 * elements as @bw_cost_per_microframe, but only first
			 * @num_budget_microframes elements will be used later
			 */
			for (i = 2; i < TT_MICROFRAMES_MAX; i++)
				bwb_table[i] =	sch_ep->bw_cost_per_microframe;
		}
	}
}