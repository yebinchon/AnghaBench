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
struct TYPE_2__ {scalar_t__ host_dma; } ;
struct dwc2_hsotg {TYPE_1__ params; int /*<<< orphan*/  dev; } ;
struct dwc2_host_chan {int /*<<< orphan*/  halt_status; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dwc2_host_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_qtd*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,struct dwc2_host_chan*,int,struct dwc2_qtd*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dwc2_hsotg *hsotg,
				struct dwc2_host_chan *chan, int chnum,
				struct dwc2_qtd *qtd)
{
	if (FUNC0(chan))
		FUNC1(hsotg->dev, "--Host Channel %d Interrupt: Channel Halted--\n",
			 chnum);

	if (hsotg->params.host_dma) {
		FUNC3(hsotg, chan, chnum, qtd);
	} else {
		if (!FUNC2(hsotg, chan, chnum, qtd))
			return;
		FUNC4(hsotg, chan, qtd, chan->halt_status);
	}
}