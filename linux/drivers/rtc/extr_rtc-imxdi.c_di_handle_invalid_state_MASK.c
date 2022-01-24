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
struct imxdi_dev {scalar_t__ ioaddr; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DCR ; 
 int DCR_TCE ; 
 int DCR_TCHL ; 
 int DCR_TCSL ; 
 int DCR_TDCSL ; 
 scalar_t__ DSR ; 
 int DSR_NVF ; 
 int DSR_TCO ; 
 scalar_t__ DTCMR ; 
 scalar_t__ DTCR ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct imxdi_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct imxdi_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct imxdi_dev*,int,scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct imxdi_dev *imxdi, u32 dsr)
{
	u32 dcr, sec;

	/*
	 * lets disable all sources which can force the DryIce unit into
	 * the "FAILURE STATE" for now
	 */
	FUNC4(imxdi, 0x00000000, DTCR);
	/* and lets protect them at runtime from any change */
	FUNC4(imxdi, DCR_TDCSL, DCR);

	sec = FUNC5(imxdi->ioaddr + DTCMR);
	if (sec != 0)
		FUNC1(&imxdi->pdev->dev,
			 "The security violation has happened at %u seconds\n",
			 sec);
	/*
	 * the timer cannot be set/modified if
	 * - the TCHL or TCSL bit is set in DCR
	 */
	dcr = FUNC5(imxdi->ioaddr + DCR);
	if (!(dcr & DCR_TCE)) {
		if (dcr & DCR_TCHL) {
			/* we are out of luck */
			FUNC3(imxdi, "battery");
			return -ENODEV;
		}
		if (dcr & DCR_TCSL) {
			FUNC3(imxdi, "main");
			return -ENODEV;
		}
	}
	/*
	 * - the timer counter stops/is stopped if
	 *   - its overflow flag is set (TCO in DSR)
	 *      -> clear overflow bit to make it count again
	 *   - NVF is set in DSR
	 *      -> clear non-valid bit to make it count again
	 *   - its TCE (DCR) is cleared
	 *      -> set TCE to make it count
	 *   - it was never set before
	 *      -> write a time into it (required again if the NVF was set)
	 */
	/* state handled */
	FUNC4(imxdi, DSR_NVF, DSR);
	/* clear overflow flag */
	FUNC4(imxdi, DSR_TCO, DSR);
	/* enable the counter */
	FUNC4(imxdi, dcr | DCR_TCE, DCR);
	/* set and trigger it to make it count */
	FUNC4(imxdi, sec, DTCMR);

	/* now prepare for the valid state */
	return FUNC2(imxdi, FUNC0(imxdi->ioaddr + DSR));
}