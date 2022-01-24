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
struct dwc3 {int /*<<< orphan*/  reset; int /*<<< orphan*/  clks; int /*<<< orphan*/  num_clks; int /*<<< orphan*/  usb3_generic_phy; int /*<<< orphan*/  usb2_generic_phy; int /*<<< orphan*/  usb3_phy; int /*<<< orphan*/  usb2_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct dwc3 *dwc)
{
	FUNC1(dwc);

	FUNC6(dwc->usb2_phy);
	FUNC6(dwc->usb3_phy);
	FUNC2(dwc->usb2_generic_phy);
	FUNC2(dwc->usb3_generic_phy);

	FUNC5(dwc->usb2_phy, 1);
	FUNC5(dwc->usb3_phy, 1);
	FUNC3(dwc->usb2_generic_phy);
	FUNC3(dwc->usb3_generic_phy);
	FUNC0(dwc->num_clks, dwc->clks);
	FUNC4(dwc->reset);
}