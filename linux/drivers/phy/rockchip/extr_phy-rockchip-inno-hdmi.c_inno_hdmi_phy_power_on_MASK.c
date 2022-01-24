#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct post_pll_config {unsigned long tmdsclock; int version; } ;
struct phy_config {unsigned long tmdsclock; } ;
struct phy {int dummy; } ;
struct inno_hdmi_phy {int chip_version; int /*<<< orphan*/  phyclk; TYPE_2__* plat_data; int /*<<< orphan*/  dev; int /*<<< orphan*/  pixclock; } ;
struct TYPE_4__ {TYPE_1__* ops; struct phy_config* phy_cfg_table; } ;
struct TYPE_3__ {int (* power_on ) (struct inno_hdmi_phy*,struct post_pll_config const*,struct phy_config const*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC4 (struct inno_hdmi_phy*,int /*<<< orphan*/ ) ; 
 struct inno_hdmi_phy* FUNC5 (struct phy*) ; 
 struct post_pll_config* post_pll_cfg_table ; 
 int FUNC6 (struct inno_hdmi_phy*,struct post_pll_config const*,struct phy_config const*) ; 

__attribute__((used)) static int FUNC7(struct phy *phy)
{
	struct inno_hdmi_phy *inno = FUNC5(phy);
	const struct post_pll_config *cfg = post_pll_cfg_table;
	const struct phy_config *phy_cfg = inno->plat_data->phy_cfg_table;
	unsigned long tmdsclock = FUNC4(inno,
							    inno->pixclock);
	int ret;

	if (!tmdsclock) {
		FUNC3(inno->dev, "TMDS clock is zero!\n");
		return -EINVAL;
	}

	if (!inno->plat_data->ops->power_on)
		return -EINVAL;

	for (; cfg->tmdsclock != 0; cfg++)
		if (tmdsclock <= cfg->tmdsclock &&
		    cfg->version & inno->chip_version)
			break;

	for (; phy_cfg->tmdsclock != 0; phy_cfg++)
		if (tmdsclock <= phy_cfg->tmdsclock)
			break;

	if (cfg->tmdsclock == 0 || phy_cfg->tmdsclock == 0)
		return -EINVAL;

	FUNC2(inno->dev, "Inno HDMI PHY Power On\n");

	ret = FUNC1(inno->phyclk);
	if (ret)
		return ret;

	ret = inno->plat_data->ops->power_on(inno, cfg, phy_cfg);
	if (ret) {
		FUNC0(inno->phyclk);
		return ret;
	}

	return 0;
}