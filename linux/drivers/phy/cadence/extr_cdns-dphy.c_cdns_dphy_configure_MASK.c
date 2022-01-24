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
union phy_configure_opts {int /*<<< orphan*/  mipi_dphy; } ;
struct phy {int dummy; } ;
struct cdns_dphy_cfg {int /*<<< orphan*/  member_0; } ;
struct cdns_dphy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPHY_CLK_CFG_LEFT_DRIVES_LEFT ; 
 int FUNC0 (struct phy*,int /*<<< orphan*/ *,struct cdns_dphy_cfg*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns_dphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns_dphy*,struct cdns_dphy_cfg*) ; 
 int FUNC3 (struct cdns_dphy*) ; 
 struct cdns_dphy* FUNC4 (struct phy*) ; 

__attribute__((used)) static int FUNC5(struct phy *phy, union phy_configure_opts *opts)
{
	struct cdns_dphy *dphy = FUNC4(phy);
	struct cdns_dphy_cfg cfg = { 0 };
	int ret;

	ret = FUNC0(phy, &opts->mipi_dphy, &cfg);
	if (ret)
		return ret;

	/*
	 * Configure the internal PSM clk divider so that the DPHY has a
	 * 1MHz clk (or something close).
	 */
	ret = FUNC3(dphy);
	if (ret)
		return ret;

	/*
	 * Configure attach clk lanes to data lanes: the DPHY has 2 clk lanes
	 * and 8 data lanes, each clk lane can be attache different set of
	 * data lanes. The 2 groups are named 'left' and 'right', so here we
	 * just say that we want the 'left' clk lane to drive the 'left' data
	 * lanes.
	 */
	FUNC1(dphy, DPHY_CLK_CFG_LEFT_DRIVES_LEFT);

	/*
	 * Configure the DPHY PLL that will be used to generate the TX byte
	 * clk.
	 */
	FUNC2(dphy, &cfg);

	return 0;
}