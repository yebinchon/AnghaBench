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
struct dwc2_hsotg {scalar_t__ op_state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GINTSTS ; 
 int /*<<< orphan*/  GINTSTS_DISCONNINT ; 
 scalar_t__ OTG_STATE_A_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,int) ; 
 scalar_t__ FUNC2 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dwc2_hsotg *hsotg)
{
	FUNC4(hsotg, GINTSTS_DISCONNINT, GINTSTS);

	FUNC0(hsotg->dev, "++Disconnect Detected Interrupt++ (%s) %s\n",
		FUNC2(hsotg) ? "Host" : "Device",
		FUNC3(hsotg));

	if (hsotg->op_state == OTG_STATE_A_HOST)
		FUNC1(hsotg, false);
}