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
struct dwc2_hsotg {scalar_t__ lx_state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DWC2_L2 ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GINTSTS ; 
 int /*<<< orphan*/  GINTSTS_SESSREQINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct dwc2_hsotg*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*) ; 
 scalar_t__ FUNC4 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dwc2_hsotg *hsotg)
{
	int ret;

	/* Clear interrupt */
	FUNC5(hsotg, GINTSTS_SESSREQINT, GINTSTS);

	FUNC0(hsotg->dev, "Session request interrupt - lx_state=%d\n",
		hsotg->lx_state);

	if (FUNC4(hsotg)) {
		if (hsotg->lx_state == DWC2_L2) {
			ret = FUNC2(hsotg, true);
			if (ret && (ret != -ENOTSUPP))
				FUNC1(hsotg->dev,
					"exit power_down failed\n");
		}

		/*
		 * Report disconnect if there is any previous session
		 * established
		 */
		FUNC3(hsotg);
	}
}