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
typedef  int u32 ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOVERFLOW ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int RSCFG_RG ; 
 int RSCFG_RSTYPE_HARD ; 
 int RSCFG_RSTYPE_SOFT ; 
 int RSISO_RG ; 
 int RSMUX_LOCK_SET ; 
 int /*<<< orphan*/  RSMUX_OMODE_MASK ; 
 int RSMUX_OMODE_RESET_ON ; 
 int WDT_MUX_NUMBER ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int FUNC3 (struct device_node*,char*) ; 
 int FUNC4 (struct device_node*,char*,int,int*) ; 
 struct regmap* pllctrl_regs ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct regmap*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct regmap*,int,int) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  rsctrl_restart_nb ; 
 int rspll_offset ; 
 struct regmap* FUNC9 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	int i;
	int ret;
	u32 val;
	unsigned int rg;
	u32 rsmux_offset;
	struct regmap *devctrl_regs;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;

	if (!np)
		return -ENODEV;

	/* get regmaps */
	pllctrl_regs = FUNC9(np, "ti,syscon-pll");
	if (FUNC0(pllctrl_regs))
		return FUNC1(pllctrl_regs);

	devctrl_regs = FUNC9(np, "ti,syscon-dev");
	if (FUNC0(devctrl_regs))
		return FUNC1(devctrl_regs);

	ret = FUNC4(np, "ti,syscon-pll", 1, &rspll_offset);
	if (ret) {
		FUNC2(dev, "couldn't read the reset pll offset!\n");
		return -EINVAL;
	}

	ret = FUNC4(np, "ti,syscon-dev", 1, &rsmux_offset);
	if (ret) {
		FUNC2(dev, "couldn't read the rsmux offset!\n");
		return -EINVAL;
	}

	/* set soft/hard reset */
	val = FUNC3(np, "ti,soft-reset");
	val = val ? RSCFG_RSTYPE_SOFT : RSCFG_RSTYPE_HARD;

	ret = FUNC8();
	if (ret)
		return ret;

	ret = FUNC7(pllctrl_regs, rspll_offset + RSCFG_RG, val);
	if (ret)
		return ret;

	/* disable a reset isolation for all module clocks */
	ret = FUNC7(pllctrl_regs, rspll_offset + RSISO_RG, 0);
	if (ret)
		return ret;

	/* enable a reset for watchdogs from wdt-list */
	for (i = 0; i < WDT_MUX_NUMBER; i++) {
		ret = FUNC4(np, "ti,wdt-list", i, &val);
		if (ret == -EOVERFLOW && !i) {
			FUNC2(dev, "ti,wdt-list property has to contain at"
				"least one entry\n");
			return -EINVAL;
		} else if (ret) {
			break;
		}

		if (val >= WDT_MUX_NUMBER) {
			FUNC2(dev, "ti,wdt-list property can contain "
				"only numbers < 4\n");
			return -EINVAL;
		}

		rg = rsmux_offset + val * 4;

		ret = FUNC6(devctrl_regs, rg, RSMUX_OMODE_MASK,
					 RSMUX_OMODE_RESET_ON |
					 RSMUX_LOCK_SET);
		if (ret)
			return ret;
	}

	ret = FUNC5(&rsctrl_restart_nb);
	if (ret)
		FUNC2(dev, "cannot register restart handler (err=%d)\n", ret);

	return ret;
}