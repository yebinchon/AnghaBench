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
typedef  size_t u32 ;
struct dwc2_hsotg {int /*<<< orphan*/  dev; struct dwc2_host_chan** hc_ptr_array; } ;
struct dwc2_host_chan {size_t xfer_buf; size_t xfer_count; int /*<<< orphan*/  data_pid_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRXSTSP ; 
 size_t GRXSTS_BYTECNT_MASK ; 
 size_t GRXSTS_BYTECNT_SHIFT ; 
 size_t GRXSTS_DPID_MASK ; 
 size_t GRXSTS_DPID_SHIFT ; 
 size_t GRXSTS_HCHNUM_MASK ; 
 size_t GRXSTS_HCHNUM_SHIFT ; 
#define  GRXSTS_PKTSTS_DATATOGGLEERR 131 
#define  GRXSTS_PKTSTS_HCHHALTED 130 
#define  GRXSTS_PKTSTS_HCHIN 129 
#define  GRXSTS_PKTSTS_HCHIN_XFER_COMP 128 
 size_t GRXSTS_PKTSTS_MASK ; 
 size_t GRXSTS_PKTSTS_SHIFT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,size_t,size_t) ; 
 size_t FUNC4 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dwc2_hsotg *hsotg)
{
	u32 grxsts, chnum, bcnt, dpid, pktsts;
	struct dwc2_host_chan *chan;

	if (FUNC0())
		FUNC2(hsotg->dev, "--RxFIFO Level Interrupt--\n");

	grxsts = FUNC4(hsotg, GRXSTSP);
	chnum = (grxsts & GRXSTS_HCHNUM_MASK) >> GRXSTS_HCHNUM_SHIFT;
	chan = hsotg->hc_ptr_array[chnum];
	if (!chan) {
		FUNC1(hsotg->dev, "Unable to get corresponding channel\n");
		return;
	}

	bcnt = (grxsts & GRXSTS_BYTECNT_MASK) >> GRXSTS_BYTECNT_SHIFT;
	dpid = (grxsts & GRXSTS_DPID_MASK) >> GRXSTS_DPID_SHIFT;
	pktsts = (grxsts & GRXSTS_PKTSTS_MASK) >> GRXSTS_PKTSTS_SHIFT;

	/* Packet Status */
	if (FUNC0()) {
		FUNC2(hsotg->dev, "    Ch num = %d\n", chnum);
		FUNC2(hsotg->dev, "    Count = %d\n", bcnt);
		FUNC2(hsotg->dev, "    DPID = %d, chan.dpid = %d\n", dpid,
			 chan->data_pid_start);
		FUNC2(hsotg->dev, "    PStatus = %d\n", pktsts);
	}

	switch (pktsts) {
	case GRXSTS_PKTSTS_HCHIN:
		/* Read the data into the host buffer */
		if (bcnt > 0) {
			FUNC3(hsotg, chan->xfer_buf, bcnt);

			/* Update the HC fields for the next packet received */
			chan->xfer_count += bcnt;
			chan->xfer_buf += bcnt;
		}
		break;
	case GRXSTS_PKTSTS_HCHIN_XFER_COMP:
	case GRXSTS_PKTSTS_DATATOGGLEERR:
	case GRXSTS_PKTSTS_HCHHALTED:
		/* Handled in interrupt, just ignore data */
		break;
	default:
		FUNC1(hsotg->dev,
			"RxFIFO Level Interrupt: Unknown status %d\n", pktsts);
		break;
	}
}