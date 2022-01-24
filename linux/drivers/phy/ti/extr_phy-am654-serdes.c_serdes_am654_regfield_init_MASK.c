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
struct serdes_am654 {void* pll_ok; void* pll_enable; void* rx0_enable; void* tx0_enable; void* por_en; void* cmu_ok_i_0; void* l1_master_cdn_o; void* config_version; void* cmu_master_cdn_o; struct device* dev; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  cmu_master_cdn_o ; 
 int /*<<< orphan*/  cmu_ok_i_0 ; 
 int /*<<< orphan*/  config_version ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,struct regmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l1_master_cdn_o ; 
 int /*<<< orphan*/  pll_enable ; 
 int /*<<< orphan*/  pll_ok ; 
 int /*<<< orphan*/  por_en ; 
 int /*<<< orphan*/  rx0_enable ; 
 int /*<<< orphan*/  tx0_enable ; 

__attribute__((used)) static int FUNC4(struct serdes_am654 *am654_phy)
{
	struct regmap *regmap = am654_phy->regmap;
	struct device *dev = am654_phy->dev;

	am654_phy->cmu_master_cdn_o = FUNC3(dev, regmap,
							      cmu_master_cdn_o);
	if (FUNC0(am654_phy->cmu_master_cdn_o)) {
		FUNC2(dev, "CMU_MASTER_CDN_O reg field init failed\n");
		return FUNC1(am654_phy->cmu_master_cdn_o);
	}

	am654_phy->config_version = FUNC3(dev, regmap,
							    config_version);
	if (FUNC0(am654_phy->config_version)) {
		FUNC2(dev, "CONFIG_VERSION reg field init failed\n");
		return FUNC1(am654_phy->config_version);
	}

	am654_phy->l1_master_cdn_o = FUNC3(dev, regmap,
							     l1_master_cdn_o);
	if (FUNC0(am654_phy->l1_master_cdn_o)) {
		FUNC2(dev, "L1_MASTER_CDN_O reg field init failed\n");
		return FUNC1(am654_phy->l1_master_cdn_o);
	}

	am654_phy->cmu_ok_i_0 = FUNC3(dev, regmap,
							cmu_ok_i_0);
	if (FUNC0(am654_phy->cmu_ok_i_0)) {
		FUNC2(dev, "CMU_OK_I_0 reg field init failed\n");
		return FUNC1(am654_phy->cmu_ok_i_0);
	}

	am654_phy->por_en = FUNC3(dev, regmap, por_en);
	if (FUNC0(am654_phy->por_en)) {
		FUNC2(dev, "POR_EN reg field init failed\n");
		return FUNC1(am654_phy->por_en);
	}

	am654_phy->tx0_enable = FUNC3(dev, regmap,
							tx0_enable);
	if (FUNC0(am654_phy->tx0_enable)) {
		FUNC2(dev, "TX0_ENABLE reg field init failed\n");
		return FUNC1(am654_phy->tx0_enable);
	}

	am654_phy->rx0_enable = FUNC3(dev, regmap,
							rx0_enable);
	if (FUNC0(am654_phy->rx0_enable)) {
		FUNC2(dev, "RX0_ENABLE reg field init failed\n");
		return FUNC1(am654_phy->rx0_enable);
	}

	am654_phy->pll_enable = FUNC3(dev, regmap,
							pll_enable);
	if (FUNC0(am654_phy->pll_enable)) {
		FUNC2(dev, "PLL_ENABLE reg field init failed\n");
		return FUNC1(am654_phy->pll_enable);
	}

	am654_phy->pll_ok = FUNC3(dev, regmap, pll_ok);
	if (FUNC0(am654_phy->pll_ok)) {
		FUNC2(dev, "PLL_OK reg field init failed\n");
		return FUNC1(am654_phy->pll_ok);
	}

	return 0;
}