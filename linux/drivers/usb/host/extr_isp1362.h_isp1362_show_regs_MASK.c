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
struct isp1362_hcd {int /*<<< orphan*/  irqenb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCATLBLKSZ ; 
 int /*<<< orphan*/  HCATLBUFSZ ; 
 int /*<<< orphan*/  HCATLCURR ; 
 int /*<<< orphan*/  HCATLDTC ; 
 int /*<<< orphan*/  HCATLDTCTO ; 
 int /*<<< orphan*/  HCATLLAST ; 
 int /*<<< orphan*/  HCATLSKIP ; 
 int /*<<< orphan*/  HCBUFSTAT ; 
 int /*<<< orphan*/  HCCHIPID ; 
 int /*<<< orphan*/  HCCMDSTAT ; 
 int /*<<< orphan*/  HCCONTROL ; 
 int /*<<< orphan*/  HCDIRADDR ; 
 int /*<<< orphan*/  HCDMACFG ; 
 int /*<<< orphan*/  HCFMINTVL ; 
 int /*<<< orphan*/  HCFMNUM ; 
 int /*<<< orphan*/  HCFMREM ; 
 int /*<<< orphan*/  HCHWCFG ; 
 int /*<<< orphan*/  HCINTENB ; 
 int /*<<< orphan*/  HCINTLBLKSZ ; 
 int /*<<< orphan*/  HCINTLBUFSZ ; 
 int /*<<< orphan*/  HCINTLCURR ; 
 int /*<<< orphan*/  HCINTLDONE ; 
 int /*<<< orphan*/  HCINTLLAST ; 
 int /*<<< orphan*/  HCINTLSKIP ; 
 int /*<<< orphan*/  HCINTSTAT ; 
 int /*<<< orphan*/  HCISTLBUFSZ ; 
 int /*<<< orphan*/  HCISTLRATE ; 
 int /*<<< orphan*/  HCLSTHRESH ; 
 int /*<<< orphan*/  HCREVISION ; 
 int /*<<< orphan*/  HCRHDESCA ; 
 int /*<<< orphan*/  HCRHDESCB ; 
 int /*<<< orphan*/  HCRHPORT1 ; 
 int /*<<< orphan*/  HCRHPORT2 ; 
 int /*<<< orphan*/  HCRHSTATUS ; 
 int /*<<< orphan*/  HCSCRATCH ; 
 int /*<<< orphan*/  HCXFERCTR ; 
 int /*<<< orphan*/  HCuPINT ; 
 int /*<<< orphan*/  HCuPINTENB ; 
 int /*<<< orphan*/  ISP1362_REG_HCuPINTENB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct isp1362_hcd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void __attribute__((__unused__)) FUNC4(struct isp1362_hcd *isp1362_hcd)
{
	FUNC3(isp1362_hcd, HCREVISION);
	FUNC3(isp1362_hcd, HCCONTROL);
	FUNC3(isp1362_hcd, HCCMDSTAT);
	FUNC3(isp1362_hcd, HCINTSTAT);
	FUNC3(isp1362_hcd, HCINTENB);
	FUNC3(isp1362_hcd, HCFMINTVL);
	FUNC3(isp1362_hcd, HCFMREM);
	FUNC3(isp1362_hcd, HCFMNUM);
	FUNC3(isp1362_hcd, HCLSTHRESH);
	FUNC3(isp1362_hcd, HCRHDESCA);
	FUNC3(isp1362_hcd, HCRHDESCB);
	FUNC3(isp1362_hcd, HCRHSTATUS);
	FUNC3(isp1362_hcd, HCRHPORT1);
	FUNC3(isp1362_hcd, HCRHPORT2);

	FUNC3(isp1362_hcd, HCHWCFG);
	FUNC3(isp1362_hcd, HCDMACFG);
	FUNC3(isp1362_hcd, HCXFERCTR);
	FUNC3(isp1362_hcd, HCuPINT);

	if (FUNC2())
		FUNC0(0, "%-12s[%02x]:     %04x\n", "HCuPINTENB",
			 FUNC1(ISP1362_REG_HCuPINTENB), isp1362_hcd->irqenb);
	else
		FUNC3(isp1362_hcd, HCuPINTENB);
	FUNC3(isp1362_hcd, HCCHIPID);
	FUNC3(isp1362_hcd, HCSCRATCH);
	FUNC3(isp1362_hcd, HCBUFSTAT);
	FUNC3(isp1362_hcd, HCDIRADDR);
	/* Access would advance fifo
	 * isp1362_show_reg(isp1362_hcd, HCDIRDATA);
	 */
	FUNC3(isp1362_hcd, HCISTLBUFSZ);
	FUNC3(isp1362_hcd, HCISTLRATE);
	FUNC3(isp1362_hcd, HCINTLBUFSZ);
	FUNC3(isp1362_hcd, HCINTLBLKSZ);
	FUNC3(isp1362_hcd, HCINTLDONE);
	FUNC3(isp1362_hcd, HCINTLSKIP);
	FUNC3(isp1362_hcd, HCINTLLAST);
	FUNC3(isp1362_hcd, HCINTLCURR);
	FUNC3(isp1362_hcd, HCATLBUFSZ);
	FUNC3(isp1362_hcd, HCATLBLKSZ);
	/* only valid after ATL_DONE interrupt
	 * isp1362_show_reg(isp1362_hcd, HCATLDONE);
	 */
	FUNC3(isp1362_hcd, HCATLSKIP);
	FUNC3(isp1362_hcd, HCATLLAST);
	FUNC3(isp1362_hcd, HCATLCURR);
	FUNC3(isp1362_hcd, HCATLDTC);
	FUNC3(isp1362_hcd, HCATLDTCTO);
}