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
struct post_pll_config {int postdiv; int /*<<< orphan*/  prediv; int /*<<< orphan*/  fbdiv; } ;
struct phy_config {int* regs; int tmdsclock; } ;
struct inno_hdmi_phy {int /*<<< orphan*/  dev; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int RK3328_BANDGAP_ENABLE ; 
 int RK3328_BYPASS_TERM_RESISTOR_CALIB ; 
 int RK3328_ESD_DETECT_340MV ; 
 int RK3328_ESD_DETECT_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RK3328_INT_VSS_AGND_ESD_DET ; 
 int RK3328_PDATA_EN ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int RK3328_POST_PLL_LOCK_STATUS ; 
 int RK3328_POST_PLL_POST_DIV_ENABLE ; 
 int RK3328_POST_PLL_POST_DIV_MASK ; 
 int RK3328_POST_PLL_POWER_DOWN ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int RK3328_POST_PLL_REFCLK_SEL_TMDS ; 
 int RK3328_TERM_RESISTOR_100 ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int RK3328_TMDS_DRIVER_ENABLE ; 
 int RK3328_TMDS_TERM_RESIST_150 ; 
 int RK3328_TMDS_TERM_RESIST_75 ; 
 int RK3328_TMDS_TERM_RESIST_MASK ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (struct inno_hdmi_phy*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inno_hdmi_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inno_hdmi_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static int
FUNC15(struct inno_hdmi_phy *inno,
			      const struct post_pll_config *cfg,
			      const struct phy_config *phy_cfg)
{
	int ret;
	u32 v;

	FUNC12(inno, 0x02, RK3328_PDATA_EN, 0);
	FUNC12(inno, 0xaa, RK3328_POST_PLL_POWER_DOWN,
			 RK3328_POST_PLL_POWER_DOWN);

	FUNC13(inno, 0xac, FUNC4(cfg->fbdiv));
	if (cfg->postdiv == 1) {
		FUNC13(inno, 0xaa, RK3328_POST_PLL_REFCLK_SEL_TMDS);
		FUNC13(inno, 0xab, FUNC5(cfg->fbdiv) |
			   FUNC6(cfg->prediv));
	} else {
		v = (cfg->postdiv / 2) - 1;
		v &= RK3328_POST_PLL_POST_DIV_MASK;
		FUNC13(inno, 0xad, v);
		FUNC13(inno, 0xab, FUNC5(cfg->fbdiv) |
			   FUNC6(cfg->prediv));
		FUNC13(inno, 0xaa, RK3328_POST_PLL_POST_DIV_ENABLE |
			   RK3328_POST_PLL_REFCLK_SEL_TMDS);
	}

	for (v = 0; v < 14; v++)
		FUNC13(inno, 0xb5 + v, phy_cfg->regs[v]);

	/* set ESD detection threshold for TMDS CLK, D2, D1 and D0 */
	for (v = 0; v < 4; v++)
		FUNC12(inno, 0xc8 + v, RK3328_ESD_DETECT_MASK,
				 RK3328_ESD_DETECT_340MV);

	if (phy_cfg->tmdsclock > 340000000) {
		/* Set termination resistor to 100ohm */
		v = FUNC9(inno->sysclk) / 100000;
		FUNC13(inno, 0xc5, FUNC7(v)
			   | RK3328_BYPASS_TERM_RESISTOR_CALIB);
		FUNC13(inno, 0xc6, FUNC8(v));
		FUNC13(inno, 0xc7, RK3328_TERM_RESISTOR_100);
		FUNC12(inno, 0xc5,
				 RK3328_BYPASS_TERM_RESISTOR_CALIB, 0);
	} else {
		FUNC13(inno, 0xc5, RK3328_BYPASS_TERM_RESISTOR_CALIB);

		/* clk termination resistor is 50ohm (parallel resistors) */
		if (phy_cfg->tmdsclock > 165000000)
			FUNC12(inno, 0xc8,
					 RK3328_TMDS_TERM_RESIST_MASK,
					 RK3328_TMDS_TERM_RESIST_75 |
					 RK3328_TMDS_TERM_RESIST_150);

		/* data termination resistor for D2, D1 and D0 is 150ohm */
		for (v = 0; v < 3; v++)
			FUNC12(inno, 0xc9 + v,
					 RK3328_TMDS_TERM_RESIST_MASK,
					 RK3328_TMDS_TERM_RESIST_150);
	}

	FUNC12(inno, 0xaa, RK3328_POST_PLL_POWER_DOWN, 0);
	FUNC12(inno, 0xb0, RK3328_BANDGAP_ENABLE,
			 RK3328_BANDGAP_ENABLE);
	FUNC12(inno, 0xb2, RK3328_TMDS_DRIVER_ENABLE,
			 RK3328_TMDS_DRIVER_ENABLE);

	/* Wait for post PLL lock */
	ret = FUNC11(inno, 0xaf, v, v & RK3328_POST_PLL_LOCK_STATUS,
			1000, 10000);
	if (ret) {
		FUNC10(inno->dev, "Post-PLL locking failed\n");
		return ret;
	}

	if (phy_cfg->tmdsclock > 340000000)
		FUNC14(100);

	FUNC12(inno, 0x02, RK3328_PDATA_EN, RK3328_PDATA_EN);

	/* Enable PHY IRQ */
	FUNC13(inno, 0x05, FUNC0(RK3328_INT_VSS_AGND_ESD_DET)
		   | FUNC3(RK3328_INT_VSS_AGND_ESD_DET));
	FUNC13(inno, 0x07, FUNC2(RK3328_INT_VSS_AGND_ESD_DET)
		   | FUNC1(RK3328_INT_VSS_AGND_ESD_DET));
	return 0;
}