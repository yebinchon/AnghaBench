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
struct cdns_dphy_cfg {int pll_fbdiv; int /*<<< orphan*/  pll_opdiv; int /*<<< orphan*/  pll_ipdiv; } ;
struct cdns_dphy {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ DPHY_CMN_FBDIV ; 
 int DPHY_CMN_FBDIV_FROM_REG ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int DPHY_CMN_IPDIV_FROM_REG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int DPHY_CMN_OPDIV_FROM_REG ; 
 scalar_t__ DPHY_CMN_OPIPDIV ; 
 scalar_t__ DPHY_CMN_PWM ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct cdns_dphy *dphy,
				      const struct cdns_dphy_cfg *cfg)
{
	u32 fbdiv_low, fbdiv_high;

	fbdiv_low = (cfg->pll_fbdiv / 4) - 2;
	fbdiv_high = cfg->pll_fbdiv - fbdiv_low - 2;

	FUNC6(DPHY_CMN_IPDIV_FROM_REG | DPHY_CMN_OPDIV_FROM_REG |
	       FUNC1(cfg->pll_ipdiv) |
	       FUNC2(cfg->pll_opdiv),
	       dphy->regs + DPHY_CMN_OPIPDIV);
	FUNC6(DPHY_CMN_FBDIV_FROM_REG |
	       FUNC0(fbdiv_low, fbdiv_high),
	       dphy->regs + DPHY_CMN_FBDIV);
	FUNC6(FUNC4(6) | FUNC5(0x101) |
	       FUNC3(0x8),
	       dphy->regs + DPHY_CMN_PWM);
}