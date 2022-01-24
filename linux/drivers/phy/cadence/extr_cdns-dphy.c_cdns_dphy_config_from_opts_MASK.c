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
struct phy_configure_opts_mipi_dphy {int wakeup; } ;
struct phy {int dummy; } ;
struct cdns_dphy_cfg {int dummy; } ;
struct cdns_dphy {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cdns_dphy*) ; 
 int FUNC1 (struct cdns_dphy*,struct cdns_dphy_cfg*,struct phy_configure_opts_mipi_dphy*,unsigned int*) ; 
 struct cdns_dphy* FUNC2 (struct phy*) ; 
 int FUNC3 (struct phy_configure_opts_mipi_dphy*) ; 

__attribute__((used)) static int FUNC4(struct phy *phy,
				      struct phy_configure_opts_mipi_dphy *opts,
				      struct cdns_dphy_cfg *cfg)
{
	struct cdns_dphy *dphy = FUNC2(phy);
	unsigned int dsi_hfp_ext = 0;
	int ret;

	ret = FUNC3(opts);
	if (ret)
		return ret;

	ret = FUNC1(dphy, cfg,
					opts, &dsi_hfp_ext);
	if (ret)
		return ret;

	opts->wakeup = FUNC0(dphy) / 1000;

	return 0;
}