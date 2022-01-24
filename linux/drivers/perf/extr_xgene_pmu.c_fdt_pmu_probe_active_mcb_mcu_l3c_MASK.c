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
struct xgene_pmu {int l3c_active_mask; int mcb_active_mask; int mc_active_mask; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSW_CSWCR ; 
 unsigned int CSW_CSWCR_DUALMCB_MASK ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int /*<<< orphan*/  MCBADDRMR ; 
 unsigned int MCBADDRMR_DUALMCU_MODE_MASK ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 struct regmap* FUNC4 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC5(struct xgene_pmu *xgene_pmu,
					    struct platform_device *pdev)
{
	struct regmap *csw_map, *mcba_map, *mcbb_map;
	struct device_node *np = pdev->dev.of_node;
	unsigned int reg;

	csw_map = FUNC4(np, "regmap-csw");
	if (FUNC0(csw_map)) {
		FUNC2(&pdev->dev, "unable to get syscon regmap csw\n");
		return FUNC1(csw_map);
	}

	mcba_map = FUNC4(np, "regmap-mcba");
	if (FUNC0(mcba_map)) {
		FUNC2(&pdev->dev, "unable to get syscon regmap mcba\n");
		return FUNC1(mcba_map);
	}

	mcbb_map = FUNC4(np, "regmap-mcbb");
	if (FUNC0(mcbb_map)) {
		FUNC2(&pdev->dev, "unable to get syscon regmap mcbb\n");
		return FUNC1(mcbb_map);
	}

	xgene_pmu->l3c_active_mask = 0x1;
	if (FUNC3(csw_map, CSW_CSWCR, &reg))
		return -EINVAL;

	if (reg & CSW_CSWCR_DUALMCB_MASK) {
		/* Dual MCB active */
		xgene_pmu->mcb_active_mask = 0x3;
		/* Probe all active MC(s) */
		if (FUNC3(mcbb_map, MCBADDRMR, &reg))
			return 0;
		xgene_pmu->mc_active_mask =
			(reg & MCBADDRMR_DUALMCU_MODE_MASK) ? 0xF : 0x5;
	} else {
		/* Single MCB active */
		xgene_pmu->mcb_active_mask = 0x1;
		/* Probe all active MC(s) */
		if (FUNC3(mcba_map, MCBADDRMR, &reg))
			return 0;
		xgene_pmu->mc_active_mask =
			(reg & MCBADDRMR_DUALMCU_MODE_MASK) ? 0x3 : 0x1;
	}

	return 0;
}