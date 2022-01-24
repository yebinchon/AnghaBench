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
struct TYPE_2__ {scalar_t__ lpm; int /*<<< orphan*/  external_id_pin_ctl; int /*<<< orphan*/  host_dma; } ;
struct dwc2_hsotg {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  GINTMSK ; 
 int /*<<< orphan*/  GINTSTS ; 
 int GINTSTS_CONIDSTSCHNG ; 
 int GINTSTS_LPMTRANRCVD ; 
 int GINTSTS_MODEMIS ; 
 int GINTSTS_OTGINT ; 
 int GINTSTS_RXFLVL ; 
 int GINTSTS_SESSREQINT ; 
 int GINTSTS_USBSUSP ; 
 int GINTSTS_WKUPINT ; 
 int /*<<< orphan*/  GOTGINT ; 
 scalar_t__ FUNC0 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dwc2_hsotg *hsotg)
{
	u32 intmsk;

	/* Clear any pending OTG Interrupts */
	FUNC1(hsotg, 0xffffffff, GOTGINT);

	/* Clear any pending interrupts */
	FUNC1(hsotg, 0xffffffff, GINTSTS);

	/* Enable the interrupts in the GINTMSK */
	intmsk = GINTSTS_MODEMIS | GINTSTS_OTGINT;

	if (!hsotg->params.host_dma)
		intmsk |= GINTSTS_RXFLVL;
	if (!hsotg->params.external_id_pin_ctl)
		intmsk |= GINTSTS_CONIDSTSCHNG;

	intmsk |= GINTSTS_WKUPINT | GINTSTS_USBSUSP |
		  GINTSTS_SESSREQINT;

	if (FUNC0(hsotg) && hsotg->params.lpm)
		intmsk |= GINTSTS_LPMTRANRCVD;

	FUNC1(hsotg, intmsk, GINTMSK);
}