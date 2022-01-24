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
struct dwc2_hsotg {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAINTMSK ; 
 int /*<<< orphan*/  DCTL ; 
 int /*<<< orphan*/  DCTL_SFTDISCON ; 
 int /*<<< orphan*/  DIEPMSK ; 
 int DIEPMSK_AHBERRMSK ; 
 int DIEPMSK_EPDISBLDMSK ; 
 int DIEPMSK_TIMEOUTMSK ; 
 int DIEPMSK_XFERCOMPLMSK ; 
 int /*<<< orphan*/  DOEPMSK ; 
 int DOEPMSK_AHBERRMSK ; 
 int DOEPMSK_EPDISBLDMSK ; 
 int DOEPMSK_SETUPMSK ; 
 int DOEPMSK_XFERCOMPLMSK ; 
 int /*<<< orphan*/  GAHBCFG ; 
 int /*<<< orphan*/  GAHBCFG_DMA_EN ; 
 int /*<<< orphan*/  GNPTXFSIZ ; 
 int /*<<< orphan*/  GRXFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct dwc2_hsotg*) ; 

__attribute__((used)) static void FUNC6(struct dwc2_hsotg *hsotg)
{
	/* unmask subset of endpoint interrupts */

	FUNC4(hsotg, DIEPMSK_TIMEOUTMSK | DIEPMSK_AHBERRMSK |
		    DIEPMSK_EPDISBLDMSK | DIEPMSK_XFERCOMPLMSK,
		    DIEPMSK);

	FUNC4(hsotg, DOEPMSK_SETUPMSK | DOEPMSK_AHBERRMSK |
		    DOEPMSK_EPDISBLDMSK | DOEPMSK_XFERCOMPLMSK,
		    DOEPMSK);

	FUNC4(hsotg, 0, DAINTMSK);

	/* Be in disconnected state until gadget is registered */
	FUNC3(hsotg, DCTL, DCTL_SFTDISCON);

	/* setup fifos */

	FUNC0(hsotg->dev, "GRXFSIZ=0x%08x, GNPTXFSIZ=0x%08x\n",
		FUNC2(hsotg, GRXFSIZ),
		FUNC2(hsotg, GNPTXFSIZ));

	FUNC1(hsotg);

	if (FUNC5(hsotg))
		FUNC3(hsotg, GAHBCFG, GAHBCFG_DMA_EN);
}