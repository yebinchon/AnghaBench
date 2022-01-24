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
struct dwc3 {int /*<<< orphan*/  regs; int /*<<< orphan*/  dis_u2_susphy_quirk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DWC3_GUSB2PHYCFG_SUSPHY ; 
 int /*<<< orphan*/  DWC3_OCFG ; 
 int DWC3_OCFG_SFTRSTMASK ; 
 int /*<<< orphan*/  DWC3_OCTL ; 
 int DWC3_OCTL_DEVSETHNPEN ; 
 int DWC3_OCTL_HNPREQ ; 
 int DWC3_OCTL_HSTSETHNPEN ; 
 int DWC3_OCTL_PERIMODE ; 
 int DWC3_OCTL_TERMSELIDPULSE ; 
 int /*<<< orphan*/  DWC3_OEVTEN_BDEVSESSVLDDETEN ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct dwc3 *dwc)
{
	u32 reg;

	/* As per Figure 11-20 B-Device Flow Diagram */

	/*
	 * OCFG.HNPCap = GHWPARAMS6.HNP_CAP, OCFG.SRPCap = 1
	 * but we keep them 0 for simple dual-role operation.
	 */
	reg = FUNC2(dwc->regs, DWC3_OCFG);
	/* OCFG.OTGSftRstMsk = 0/1 */
	reg |= DWC3_OCFG_SFTRSTMASK;
	FUNC3(dwc->regs, DWC3_OCFG, reg);
	/*
	 * OCTL.PeriMode = 1
	 * OCTL.TermSelDLPulse = 0/1, OCTL.HNPReq = 0
	 * OCTL.DevSetHNPEn = 0, OCTL.HstSetHNPEn = 0
	 */
	reg = FUNC2(dwc->regs, DWC3_OCTL);
	reg |= DWC3_OCTL_PERIMODE;
	reg &= ~(DWC3_OCTL_TERMSELIDPULSE | DWC3_OCTL_HNPREQ |
			DWC3_OCTL_DEVSETHNPEN | DWC3_OCTL_HSTSETHNPEN);
	FUNC3(dwc->regs, DWC3_OCTL, reg);
	/* OEVTEN.OTGBDevSesVldDetEvntEn = 1 */
	FUNC1(dwc, DWC3_OEVTEN_BDEVSESSVLDDETEN);
	/* GUSB2PHYCFG.ULPIAutoRes = 0, GUSB2PHYCFG0.SusPHY = 1 */
	if (!dwc->dis_u2_susphy_quirk) {
		reg = FUNC2(dwc->regs, FUNC0(0));
		reg |= DWC3_GUSB2PHYCFG_SUSPHY;
		FUNC3(dwc->regs, FUNC0(0), reg);
	}
	/* GCTL.GblHibernationEn = 0. Already 0. */
}