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
struct dwc2_hsotg {scalar_t__ lx_state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DWC2_L0 ; 
 scalar_t__ DWC2_L1 ; 
 int /*<<< orphan*/  GLPMCFG ; 
 int GLPMCFG_COREL1RES_MASK ; 
 int GLPMCFG_ENBLSLPM ; 
 int GLPMCFG_HIRD_THRES_EN ; 
 int GLPMCFG_L1RESUMEOK ; 
 int GLPMCFG_SLPSTS ; 
 int /*<<< orphan*/  FUNC0 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*) ; 
 scalar_t__ FUNC4 (struct dwc2_hsotg*) ; 
 int FUNC5 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resume ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct dwc2_hsotg *hsotg)
{
	u32 glpmcfg;
	u32 i = 0;

	if (hsotg->lx_state != DWC2_L1) {
		FUNC2(hsotg->dev, "Core isn't in DWC2_L1 state\n");
		return;
	}

	glpmcfg = FUNC5(hsotg, GLPMCFG);
	if (FUNC4(hsotg)) {
		FUNC1(hsotg->dev, "Exit from L1 state\n");
		glpmcfg &= ~GLPMCFG_ENBLSLPM;
		glpmcfg &= ~GLPMCFG_HIRD_THRES_EN;
		FUNC6(hsotg, glpmcfg, GLPMCFG);

		do {
			glpmcfg = FUNC5(hsotg, GLPMCFG);

			if (!(glpmcfg & (GLPMCFG_COREL1RES_MASK |
					 GLPMCFG_L1RESUMEOK | GLPMCFG_SLPSTS)))
				break;

			FUNC7(1);
		} while (++i < 200);

		if (i == 200) {
			FUNC2(hsotg->dev, "Failed to exit L1 sleep state in 200us.\n");
			return;
		}
		FUNC3(hsotg);
	} else {
		/* TODO */
		FUNC2(hsotg->dev, "Host side LPM is not supported.\n");
		return;
	}

	/* Change to L0 state */
	hsotg->lx_state = DWC2_L0;

	/* Inform gadget to exit from L1 */
	FUNC0(hsotg, resume);
}