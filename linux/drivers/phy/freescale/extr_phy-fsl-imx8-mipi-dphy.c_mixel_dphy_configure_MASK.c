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
union phy_configure_opts {int /*<<< orphan*/  mipi_dphy; } ;
struct phy {int dummy; } ;
struct mixel_dphy_priv {TYPE_1__* devdata; int /*<<< orphan*/  cfg; } ;
struct mixel_dphy_cfg {int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_rxcdrp; int /*<<< orphan*/  reg_rxlprp; int /*<<< orphan*/  reg_auto_pd_en; int /*<<< orphan*/  reg_tx_rcal; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPHY_LOCK_BYP ; 
 int /*<<< orphan*/  DPHY_TST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mixel_dphy_cfg*,int) ; 
 int FUNC1 (struct phy*,int /*<<< orphan*/ *,struct mixel_dphy_cfg*) ; 
 int FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy*) ; 
 struct mixel_dphy_priv* FUNC4 (struct phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct phy*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct phy *phy, union phy_configure_opts *opts)
{
	struct mixel_dphy_priv *priv = FUNC4(phy);
	struct mixel_dphy_cfg cfg = { 0 };
	int ret;

	ret = FUNC1(phy, &opts->mipi_dphy, &cfg);
	if (ret)
		return ret;

	/* Update the configuration */
	FUNC0(&priv->cfg, &cfg, sizeof(struct mixel_dphy_cfg));

	FUNC5(phy, 0x00, DPHY_LOCK_BYP);
	FUNC5(phy, 0x01, priv->devdata->reg_tx_rcal);
	FUNC5(phy, 0x00, priv->devdata->reg_auto_pd_en);
	FUNC5(phy, 0x02, priv->devdata->reg_rxlprp);
	FUNC5(phy, 0x02, priv->devdata->reg_rxcdrp);
	FUNC5(phy, 0x25, DPHY_TST);

	FUNC3(phy);
	ret = FUNC2(phy);
	if (ret < 0)
		return ret;

	return 0;
}