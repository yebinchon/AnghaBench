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
struct platform_device {int dummy; } ;
struct dwc2_hsotg {int /*<<< orphan*/  reset_ecc; int /*<<< orphan*/  reset; scalar_t__ ll_hw_enabled; scalar_t__ gadget_enabled; scalar_t__ hcd_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*) ; 
 struct dwc2_hsotg* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *dev)
{
	struct dwc2_hsotg *hsotg = FUNC4(dev);

	FUNC0(hsotg);
	if (hsotg->hcd_enabled)
		FUNC1(hsotg);
	if (hsotg->gadget_enabled)
		FUNC2(hsotg);

	if (hsotg->ll_hw_enabled)
		FUNC3(hsotg);

	FUNC5(hsotg->reset);
	FUNC5(hsotg->reset_ecc);

	return 0;
}