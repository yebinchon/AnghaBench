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
struct ti_pipe3 {scalar_t__ mode; int sata_refclk_enabled; struct phy* refclk; int /*<<< orphan*/  settings; int /*<<< orphan*/  dpll_map; struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct pipe3_data {scalar_t__ mode; int /*<<< orphan*/  settings; int /*<<< orphan*/  dpll_map; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 scalar_t__ PIPE3_MODE_SATA ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct ti_pipe3* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy* FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC9 (struct phy*,struct ti_pipe3*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct ti_pipe3*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int FUNC12 (struct ti_pipe3*) ; 
 int FUNC13 (struct ti_pipe3*) ; 
 int FUNC14 (struct ti_pipe3*) ; 
 int FUNC15 (struct ti_pipe3*) ; 
 int /*<<< orphan*/  ti_pipe3_id_table ; 
 int /*<<< orphan*/  FUNC16 (struct phy*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct ti_pipe3 *phy;
	struct phy *generic_phy;
	struct phy_provider *phy_provider;
	struct device *dev = &pdev->dev;
	int ret;
	const struct of_device_id *match;
	struct pipe3_data *data;

	phy = FUNC5(dev, sizeof(*phy), GFP_KERNEL);
	if (!phy)
		return -ENOMEM;

	match = FUNC8(ti_pipe3_id_table, dev);
	if (!match)
		return -EINVAL;

	data = (struct pipe3_data *)match->data;
	if (!data) {
		FUNC4(dev, "no driver data\n");
		return -EINVAL;
	}

	phy->dev = dev;
	phy->mode = data->mode;
	phy->dpll_map = data->dpll_map;
	phy->settings = data->settings;

	ret = FUNC13(phy);
	if (ret)
		return ret;

	ret = FUNC15(phy);
	if (ret)
		return ret;

	ret = FUNC14(phy);
	if (ret)
		return ret;

	ret = FUNC12(phy);
	if (ret)
		return ret;

	FUNC10(pdev, phy);
	FUNC11(dev);

	/*
	 * Prevent auto-disable of refclk for SATA PHY due to Errata i783
	 */
	if (phy->mode == PIPE3_MODE_SATA) {
		if (!FUNC0(phy->refclk)) {
			FUNC3(phy->refclk);
			phy->sata_refclk_enabled = true;
		}
	}

	generic_phy = FUNC7(dev, NULL, &ops);
	if (FUNC0(generic_phy))
		return FUNC1(generic_phy);

	FUNC9(generic_phy, phy);

	FUNC16(generic_phy);

	phy_provider = FUNC6(dev, of_phy_simple_xlate);
	return FUNC2(phy_provider);
}