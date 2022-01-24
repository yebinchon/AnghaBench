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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hdmi_phy_data {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  phy_feat ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

int FUNC6(struct platform_device *pdev, struct hdmi_phy_data *phy)
{
	struct resource *res;

	phy_feat = FUNC4();
	if (!phy_feat)
		return -ENODEV;

	res = FUNC5(pdev, IORESOURCE_MEM, "phy");
	if (!res) {
		FUNC0("can't get PHY mem resource\n");
		return -EINVAL;
	}

	phy->base = FUNC3(&pdev->dev, res);
	if (FUNC1(phy->base)) {
		FUNC0("can't ioremap TX PHY\n");
		return FUNC2(phy->base);
	}

	return 0;
}