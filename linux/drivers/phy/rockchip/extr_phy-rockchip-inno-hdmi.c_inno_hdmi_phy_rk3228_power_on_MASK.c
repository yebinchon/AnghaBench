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
struct post_pll_config {int postdiv; int tmdsclock; int /*<<< orphan*/  fbdiv; int /*<<< orphan*/  prediv; } ;
struct phy_config {int /*<<< orphan*/ * regs; } ;
struct inno_hdmi_phy {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int RK3228_BANDGAP_ENABLE ; 
 int RK3228_PDATAEN_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int RK3228_POST_PLL_FB_DIV_8_MASK ; 
 int RK3228_POST_PLL_LOCK_STATUS ; 
 int FUNC2 (int) ; 
 int RK3228_POST_PLL_POST_DIV_ENABLE ; 
 int RK3228_POST_PLL_POST_DIV_MASK ; 
 int RK3228_POST_PLL_POWER_DOWN ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int RK3228_POST_PLL_PRE_DIV_MASK ; 
 int RK3228_PRE_PLL_POWER_DOWN ; 
 int RK3228_TMDS_DRIVER_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct inno_hdmi_phy*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inno_hdmi_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inno_hdmi_phy*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(struct inno_hdmi_phy *inno,
			      const struct post_pll_config *cfg,
			      const struct phy_config *phy_cfg)
{
	int ret;
	u32 v;

	FUNC6(inno, 0x02, RK3228_PDATAEN_DISABLE,
			 RK3228_PDATAEN_DISABLE);
	FUNC6(inno, 0xe0, RK3228_PRE_PLL_POWER_DOWN |
			 RK3228_POST_PLL_POWER_DOWN,
			 RK3228_PRE_PLL_POWER_DOWN |
			 RK3228_POST_PLL_POWER_DOWN);

	/* Post-PLL update */
	FUNC6(inno, 0xe9, RK3228_POST_PLL_PRE_DIV_MASK,
			 FUNC3(cfg->prediv));
	FUNC6(inno, 0xeb, RK3228_POST_PLL_FB_DIV_8_MASK,
			 FUNC1(cfg->fbdiv));
	FUNC7(inno, 0xea, FUNC0(cfg->fbdiv));

	if (cfg->postdiv == 1) {
		FUNC6(inno, 0xe9, RK3228_POST_PLL_POST_DIV_ENABLE,
				 0);
	} else {
		int div = cfg->postdiv / 2 - 1;

		FUNC6(inno, 0xe9, RK3228_POST_PLL_POST_DIV_ENABLE,
				 RK3228_POST_PLL_POST_DIV_ENABLE);
		FUNC6(inno, 0xeb, RK3228_POST_PLL_POST_DIV_MASK,
				 FUNC2(div));
	}

	for (v = 0; v < 4; v++)
		FUNC7(inno, 0xef + v, phy_cfg->regs[v]);

	FUNC6(inno, 0xe0, RK3228_PRE_PLL_POWER_DOWN |
			 RK3228_POST_PLL_POWER_DOWN, 0);
	FUNC6(inno, 0xe1, RK3228_BANDGAP_ENABLE,
			 RK3228_BANDGAP_ENABLE);
	FUNC6(inno, 0xe1, RK3228_TMDS_DRIVER_ENABLE,
			 RK3228_TMDS_DRIVER_ENABLE);

	/* Wait for post PLL lock */
	ret = FUNC5(inno, 0xeb, v, v & RK3228_POST_PLL_LOCK_STATUS,
			100, 100000);
	if (ret) {
		FUNC4(inno->dev, "Post-PLL locking failed\n");
		return ret;
	}

	if (cfg->tmdsclock > 340000000)
		FUNC8(100);

	FUNC6(inno, 0x02, RK3228_PDATAEN_DISABLE, 0);
	return 0;
}