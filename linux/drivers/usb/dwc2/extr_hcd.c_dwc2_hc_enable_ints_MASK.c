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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ host_dma; } ;
struct dwc2_hsotg {int /*<<< orphan*/  dev; TYPE_1__ params; } ;
struct dwc2_host_chan {int hc_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  GINTMSK ; 
 int GINTSTS_HCHINT ; 
 int /*<<< orphan*/  HAINTMSK ; 
 scalar_t__ FUNC0 (struct dwc2_host_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,struct dwc2_host_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,struct dwc2_host_chan*) ; 
 int FUNC4 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dwc2_hsotg *hsotg,
				struct dwc2_host_chan *chan)
{
	u32 intmsk;

	if (hsotg->params.host_dma) {
		if (FUNC0(chan))
			FUNC1(hsotg->dev, "DMA enabled\n");
		FUNC2(hsotg, chan);
	} else {
		if (FUNC0(chan))
			FUNC1(hsotg->dev, "DMA disabled\n");
		FUNC3(hsotg, chan);
	}

	/* Enable the top level host channel interrupt */
	intmsk = FUNC4(hsotg, HAINTMSK);
	intmsk |= 1 << chan->hc_num;
	FUNC5(hsotg, intmsk, HAINTMSK);
	if (FUNC0(chan))
		FUNC1(hsotg->dev, "set HAINTMSK to %08x\n", intmsk);

	/* Make sure host channel interrupts are enabled */
	intmsk = FUNC4(hsotg, GINTMSK);
	intmsk |= GINTSTS_HCHINT;
	FUNC5(hsotg, intmsk, GINTMSK);
	if (FUNC0(chan))
		FUNC1(hsotg->dev, "set GINTMSK to %08x\n", intmsk);
}