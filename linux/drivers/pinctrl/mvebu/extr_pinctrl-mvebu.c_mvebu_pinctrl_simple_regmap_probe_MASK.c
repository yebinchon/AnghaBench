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
typedef  int /*<<< orphan*/  u32 ;
struct regmap {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mvebu_pinctrl_soc_info {int ncontrols; struct mvebu_mpp_ctrl_data* control_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  offset; struct regmap* map; } ;
struct mvebu_mpp_ctrl_data {TYPE_1__ regmap; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct mvebu_pinctrl_soc_info* FUNC2 (int /*<<< orphan*/ *) ; 
 struct mvebu_mpp_ctrl_data* FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct platform_device*) ; 
 struct regmap* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct platform_device *pdev,
				      struct device *syscon_dev, u32 offset)
{
	struct mvebu_pinctrl_soc_info *soc = FUNC2(&pdev->dev);
	struct mvebu_mpp_ctrl_data *mpp_data;
	struct regmap *regmap;
	int i;

	regmap = FUNC5(syscon_dev->of_node);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	mpp_data = FUNC3(&pdev->dev, soc->ncontrols, sizeof(*mpp_data),
				GFP_KERNEL);
	if (!mpp_data)
		return -ENOMEM;

	for (i = 0; i < soc->ncontrols; i++) {
		mpp_data[i].regmap.map = regmap;
		mpp_data[i].regmap.offset = offset;
	}

	soc->control_data = mpp_data;

	return FUNC4(pdev);
}