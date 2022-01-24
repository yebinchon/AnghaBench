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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct exynos_dp_video_phy {int /*<<< orphan*/  drvdata; struct phy* regs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct exynos_dp_video_phy* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy* FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exynos_dp_video_phy_ops ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC8 (struct phy*,struct exynos_dp_video_phy*) ; 
 struct phy* FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct exynos_dp_video_phy *state;
	struct device *dev = &pdev->dev;
	struct phy_provider *phy_provider;
	struct phy *phy;

	state = FUNC4(dev, sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	state->regs = FUNC9(dev->of_node,
						      "samsung,pmu-syscon");
	if (FUNC0(state->regs)) {
		FUNC3(dev, "Failed to lookup PMU regmap\n");
		return FUNC1(state->regs);
	}

	state->drvdata = FUNC7(dev);

	phy = FUNC6(dev, NULL, &exynos_dp_video_phy_ops);
	if (FUNC0(phy)) {
		FUNC3(dev, "failed to create Display Port PHY\n");
		return FUNC1(phy);
	}
	FUNC8(phy, state);

	phy_provider = FUNC5(dev, of_phy_simple_xlate);

	return FUNC2(phy_provider);
}