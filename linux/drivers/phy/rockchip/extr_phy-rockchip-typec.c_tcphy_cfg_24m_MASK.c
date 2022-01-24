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
struct rockchip_typec_phy {scalar_t__ base; } ;

/* Variables and functions */
 int CLK_PLL_CONFIG ; 
 int CLK_PLL_MASK ; 
 scalar_t__ CMN_DIAG_HSCLK_SEL ; 
 scalar_t__ PMA_CMN_CTRL1 ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct rockchip_typec_phy *tcphy)
{
	u32 i, rdata;

	/*
	 * cmn_ref_clk_sel = 3, select the 24Mhz for clk parent
	 * cmn_psm_clk_dig_div = 2, set the clk division to 2
	 */
	FUNC4(0x830, tcphy->base + PMA_CMN_CTRL1);
	for (i = 0; i < 4; i++) {
		/*
		 * The following PHY configuration assumes a 24 MHz reference
		 * clock.
		 */
		FUNC4(0x90, tcphy->base + FUNC2(i));
		FUNC4(0x960, tcphy->base + FUNC0(i));
		FUNC4(0x30, tcphy->base + FUNC1(i));
	}

	rdata = FUNC3(tcphy->base + CMN_DIAG_HSCLK_SEL);
	rdata &= ~CLK_PLL_MASK;
	rdata |= CLK_PLL_CONFIG;
	FUNC4(rdata, tcphy->base + CMN_DIAG_HSCLK_SEL);
}