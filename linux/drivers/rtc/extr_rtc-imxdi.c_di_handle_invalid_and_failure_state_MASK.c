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
struct imxdi_dev {TYPE_1__* pdev; scalar_t__ ioaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DCR ; 
 int DCR_TDCHL ; 
 int DCR_TDCSL ; 
 scalar_t__ DSR ; 
 int DSR_CTD ; 
 int DSR_EBD ; 
 int DSR_ETAD ; 
 int DSR_ETBD ; 
 int DSR_MCO ; 
 int DSR_NVF ; 
 int DSR_SAD ; 
 int DSR_SVF ; 
 int DSR_TCO ; 
 int DSR_TTD ; 
 int DSR_VTD ; 
 int DSR_WBF ; 
 int DSR_WCF ; 
 int DSR_WEF ; 
 int DSR_WNF ; 
 int DSR_WTD ; 
 scalar_t__ DTCR ; 
 int ENODEV ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (struct imxdi_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct imxdi_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct imxdi_dev*,int,scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct imxdi_dev *imxdi, u32 dsr)
{
	u32 dcr;

	/*
	 * now we must first remove the tamper sources in order to get the
	 * device out of the "FAILURE STATE"
	 * To disable any of the following sources we need to modify the DTCR
	 */
	if (dsr & (DSR_WTD | DSR_ETBD | DSR_ETAD | DSR_EBD | DSR_SAD |
			DSR_TTD | DSR_CTD | DSR_VTD | DSR_MCO | DSR_TCO)) {
		dcr = FUNC0(imxdi->ioaddr + DCR);
		if (dcr & DCR_TDCHL) {
			/*
			 * the tamper register is locked. We cannot disable the
			 * tamper detection. The TDCHL can only be reset by a
			 * DRYICE POR, but we cannot force a DRYICE POR in
			 * softwere because we are still in "FAILURE STATE".
			 * We need a DRYICE POR via battery power cycling....
			 */
			/*
			 * out of luck!
			 * we cannot disable them without a DRYICE POR
			 */
			FUNC4(imxdi, "battery");
			return -ENODEV;
		}
		if (dcr & DCR_TDCSL) {
			/* a soft lock can be removed by a SYSTEM POR */
			FUNC4(imxdi, "main");
			return -ENODEV;
		}
	}

	/* disable all sources */
	FUNC5(imxdi, 0x00000000, DTCR);

	/* clear the status bits now */
	FUNC5(imxdi, dsr & (DSR_WTD | DSR_ETBD | DSR_ETAD |
			DSR_EBD | DSR_SAD | DSR_TTD | DSR_CTD | DSR_VTD |
			DSR_MCO | DSR_TCO), DSR);

	dsr = FUNC6(imxdi->ioaddr + DSR);
	if ((dsr & ~(DSR_NVF | DSR_SVF | DSR_WBF | DSR_WNF |
			DSR_WCF | DSR_WEF)) != 0)
		FUNC2(&imxdi->pdev->dev,
			 "There are still some sources of pain in DSR: %08x!\n",
			 dsr & ~(DSR_NVF | DSR_SVF | DSR_WBF | DSR_WNF |
				 DSR_WCF | DSR_WEF));

	/*
	 * now we are trying to clear the "Security-violation flag" to
	 * get the DryIce out of this state
	 */
	FUNC5(imxdi, DSR_SVF, DSR);

	/* success? */
	dsr = FUNC6(imxdi->ioaddr + DSR);
	if (dsr & DSR_SVF) {
		FUNC1(&imxdi->pdev->dev,
			 "Cannot clear the security violation flag. We are ending up in an endless loop!\n");
		/* last resort */
		FUNC4(imxdi, "battery");
		return -ENODEV;
	}

	/*
	 * now we have left the "FAILURE STATE" and ending up in the
	 * "NON-VALID STATE" time to recover everything
	 */
	return FUNC3(imxdi, dsr);
}