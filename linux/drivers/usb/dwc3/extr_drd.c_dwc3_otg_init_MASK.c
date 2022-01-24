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
struct dwc3 {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_GCTL_PRTCAP_OTG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DWC3_GUSB2PHYCFG_SUSPHY ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct dwc3 *dwc)
{
	u32 reg;

	/*
	 * As per Figure 11-4 OTG Driver Overall Programming Flow,
	 * block "Initialize GCTL for OTG operation".
	 */
	/* GCTL.PrtCapDir=2'b11 */
	FUNC3(dwc, DWC3_GCTL_PRTCAP_OTG);
	/* GUSB2PHYCFG0.SusPHY=0 */
	reg = FUNC2(dwc->regs, FUNC0(0));
	reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
	FUNC4(dwc->regs, FUNC0(0), reg);

	/* Initialize OTG registers */
	FUNC1(dwc);
}