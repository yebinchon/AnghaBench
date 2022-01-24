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
typedef  int /*<<< orphan*/  u32 ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_phandle_args {int /*<<< orphan*/ * args; int /*<<< orphan*/  np; } ;
struct ci_hdrc_msm {int secondary_phy; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  HS_PHY_DIG_CLAMP_N ; 
 scalar_t__ HS_PHY_SEC_CTRL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct ci_hdrc_msm *ci,
			       struct platform_device *pdev)
{
	struct regmap *regmap;
	struct device *dev = &pdev->dev;
	struct of_phandle_args args;
	u32 val;
	int ret;

	ret = FUNC3(dev->of_node, "phy-select", 2, 0,
					       &args);
	if (ret)
		return 0;

	regmap = FUNC6(args.np);
	FUNC2(args.np);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	ret = FUNC5(regmap, args.args[0], args.args[1]);
	if (ret)
		return ret;

	ci->secondary_phy = !!args.args[1];
	if (ci->secondary_phy) {
		val = FUNC4(ci->base + HS_PHY_SEC_CTRL);
		val |= HS_PHY_DIG_CLAMP_N;
		FUNC7(val, ci->base + HS_PHY_SEC_CTRL);
	}

	return 0;
}