#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct phy {TYPE_2__ dev; } ;
struct TYPE_4__ {int cm; int cn; int co; } ;
struct mixel_dphy_priv {TYPE_1__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  DPHY_CM ; 
 int /*<<< orphan*/  DPHY_CN ; 
 int /*<<< orphan*/  DPHY_CO ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int,int,int) ; 
 struct mixel_dphy_priv* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct phy *phy)
{
	struct mixel_dphy_priv *priv = FUNC5(phy->dev.parent);

	if (priv->cfg.cm < 16 || priv->cfg.cm > 255 ||
	    priv->cfg.cn < 1 || priv->cfg.cn > 32 ||
	    priv->cfg.co < 1 || priv->cfg.co > 8) {
		FUNC4(&phy->dev, "Invalid CM/CN/CO values! (%u/%u/%u)\n",
			priv->cfg.cm, priv->cfg.cn, priv->cfg.co);
		return -EINVAL;
	}
	FUNC3(&phy->dev, "Using CM:%u CN:%u CO:%u\n",
		priv->cfg.cm, priv->cfg.cn, priv->cfg.co);
	FUNC6(phy, FUNC0(priv->cfg.cm), DPHY_CM);
	FUNC6(phy, FUNC1(priv->cfg.cn), DPHY_CN);
	FUNC6(phy, FUNC2(priv->cfg.co), DPHY_CO);
	return 0;
}