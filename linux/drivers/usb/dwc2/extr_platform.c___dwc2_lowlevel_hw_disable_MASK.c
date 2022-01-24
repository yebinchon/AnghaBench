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
struct platform_device {int dummy; } ;
struct dwc2_hsotg {int /*<<< orphan*/  supplies; scalar_t__ clk; int /*<<< orphan*/  phy; TYPE_1__* plat; scalar_t__ uphy; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int (* phy_exit ) (struct platform_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  phy_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct dwc2_hsotg *hsotg)
{
	struct platform_device *pdev = FUNC6(hsotg->dev);
	int ret = 0;

	if (hsotg->uphy) {
		FUNC7(hsotg->uphy);
	} else if (hsotg->plat && hsotg->plat->phy_exit) {
		ret = hsotg->plat->phy_exit(pdev, hsotg->plat->phy_type);
	} else {
		ret = FUNC2(hsotg->phy);
		if (ret == 0)
			ret = FUNC3(hsotg->phy);
	}
	if (ret)
		return ret;

	if (hsotg->clk)
		FUNC1(hsotg->clk);

	ret = FUNC4(FUNC0(hsotg->supplies),
				     hsotg->supplies);

	return ret;
}