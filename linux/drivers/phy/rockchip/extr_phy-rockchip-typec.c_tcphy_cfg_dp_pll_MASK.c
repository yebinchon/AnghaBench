#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct rockchip_typec_phy {scalar_t__ base; } ;
struct TYPE_3__ {int value; scalar_t__ addr; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 scalar_t__ DP_CLK_CTL ; 
 int DP_PLL_CLOCK_ENABLE ; 
 int DP_PLL_DATA_RATE_RBR ; 
 int DP_PLL_ENABLE ; 
 TYPE_1__* dp_pll_cfg ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct rockchip_typec_phy *tcphy)
{
	u32 i;

	/* set the default mode to RBR */
	FUNC1(DP_PLL_CLOCK_ENABLE | DP_PLL_ENABLE | DP_PLL_DATA_RATE_RBR,
	       tcphy->base + DP_CLK_CTL);

	/* load the configuration of PLL1 */
	for (i = 0; i < FUNC0(dp_pll_cfg); i++)
		FUNC1(dp_pll_cfg[i].value, tcphy->base + dp_pll_cfg[i].addr);
}