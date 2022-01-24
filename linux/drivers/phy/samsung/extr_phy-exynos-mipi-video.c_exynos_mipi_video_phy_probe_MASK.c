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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct mipi_phy_device_desc {unsigned int num_regmaps; unsigned int num_phys; int /*<<< orphan*/ * phys; int /*<<< orphan*/ * regmap_names; } ;
struct exynos_mipi_video_phy {unsigned int num_phys; TYPE_1__* phys; int /*<<< orphan*/  slock; struct phy** regmaps; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {unsigned int index; int /*<<< orphan*/ * data; struct phy* phy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct exynos_mipi_video_phy*) ; 
 struct exynos_mipi_video_phy* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy* FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exynos_mipi_video_phy_ops ; 
 int /*<<< orphan*/  exynos_mipi_video_phy_xlate ; 
 struct mipi_phy_device_desc* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct phy*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct phy* FUNC11 (struct device_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	const struct mipi_phy_device_desc *phy_dev;
	struct exynos_mipi_video_phy *state;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct phy_provider *phy_provider;
	unsigned int i;

	phy_dev = FUNC8(dev);
	if (!phy_dev)
		return -ENODEV;

	state = FUNC5(dev, sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	for (i = 0; i < phy_dev->num_regmaps; i++) {
		state->regmaps[i] = FUNC11(np,
						phy_dev->regmap_names[i]);
		if (FUNC0(state->regmaps[i]))
			return FUNC1(state->regmaps[i]);
	}
	state->num_phys = phy_dev->num_phys;
	FUNC10(&state->slock);

	FUNC4(dev, state);

	for (i = 0; i < state->num_phys; i++) {
		struct phy *phy = FUNC7(dev, NULL,
						  &exynos_mipi_video_phy_ops);
		if (FUNC0(phy)) {
			FUNC3(dev, "failed to create PHY %d\n", i);
			return FUNC1(phy);
		}

		state->phys[i].phy = phy;
		state->phys[i].index = i;
		state->phys[i].data = &phy_dev->phys[i];
		FUNC9(phy, &state->phys[i]);
	}

	phy_provider = FUNC6(dev,
					exynos_mipi_video_phy_xlate);

	return FUNC2(phy_provider);
}