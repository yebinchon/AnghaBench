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
struct dwc2_qtd {scalar_t__ error_count; } ;
struct dwc2_hsotg {int dummy; } ;
struct dwc2_host_chan {int /*<<< orphan*/  ep_is_in; } ;
typedef  enum dwc2_halt_status { ____Placeholder_dwc2_halt_status } dwc2_halt_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TSIZ_PKTCNT_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int) ; 
 int FUNC2 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int) ; 

__attribute__((used)) static void FUNC4(struct dwc2_hsotg *hsotg,
					struct dwc2_host_chan *chan, int chnum,
					struct dwc2_qtd *qtd,
					enum dwc2_halt_status halt_status)
{
	u32 hctsiz = FUNC2(hsotg, FUNC0(chnum));

	qtd->error_count = 0;

	if (!chan->ep_is_in || (hctsiz & TSIZ_PKTCNT_MASK) == 0)
		/* Core halts channel in these cases */
		FUNC3(hsotg, chan, qtd, halt_status);
	else
		/* Flush any outstanding requests from the Tx queue */
		FUNC1(hsotg, chan, qtd, halt_status);
}