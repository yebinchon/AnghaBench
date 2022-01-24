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
typedef  int /*<<< orphan*/  u32 ;
struct dwc2_hsotg {scalar_t__ dr_mode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUSBCFG ; 
 int /*<<< orphan*/  GUSBCFG_FORCEDEVMODE ; 
 int /*<<< orphan*/  GUSBCFG_FORCEHOSTMODE ; 
 scalar_t__ USB_DR_MODE_HOST ; 
 scalar_t__ USB_DR_MODE_PERIPHERAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct dwc2_hsotg *hsotg, bool host)
{
	u32 gusbcfg;
	u32 set;
	u32 clear;

	FUNC1(hsotg->dev, "Forcing mode to %s\n", host ? "host" : "device");

	/*
	 * Force mode has no effect if the hardware is not OTG.
	 */
	if (!FUNC2(hsotg))
		return;

	/*
	 * If dr_mode is either peripheral or host only, there is no
	 * need to ever force the mode to the opposite mode.
	 */
	if (FUNC0(host && hsotg->dr_mode == USB_DR_MODE_PERIPHERAL))
		return;

	if (FUNC0(!host && hsotg->dr_mode == USB_DR_MODE_HOST))
		return;

	gusbcfg = FUNC3(hsotg, GUSBCFG);

	set = host ? GUSBCFG_FORCEHOSTMODE : GUSBCFG_FORCEDEVMODE;
	clear = host ? GUSBCFG_FORCEDEVMODE : GUSBCFG_FORCEHOSTMODE;

	gusbcfg &= ~clear;
	gusbcfg |= set;
	FUNC5(hsotg, gusbcfg, GUSBCFG);

	FUNC4(hsotg, host);
	return;
}