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

/* Variables and functions */
 int /*<<< orphan*/  S3C2443_PHYCTRL ; 
 int S3C2443_PHYCTRL_CLKSEL ; 
 int S3C2443_PHYCTRL_DSPORT ; 
 int S3C2443_PHYCTRL_EXTCLK ; 
 int S3C2443_PHYCTRL_PLLSEL ; 
 int /*<<< orphan*/  S3C2443_PHYPWR ; 
 int S3C2443_PHYPWR_ANALOG_PD ; 
 int S3C2443_PHYPWR_COMMON_ON ; 
 int S3C2443_PHYPWR_FSUSPEND ; 
 int S3C2443_PHYPWR_PLL_PWRDN ; 
 int S3C2443_PHYPWR_PLL_REFCLK ; 
 int S3C2443_PHYPWR_XO_ON ; 
 int /*<<< orphan*/  S3C2443_PWRCFG ; 
 int S3C2443_PWRCFG_USBPHY ; 
 int /*<<< orphan*/  S3C2443_UCLKCON ; 
 int S3C2443_UCLKCON_DETECT_VBUS ; 
 int S3C2443_UCLKCON_FUNC_CLKEN ; 
 int S3C2443_UCLKCON_TCLKEN ; 
 int /*<<< orphan*/  S3C2443_URSTCON ; 
 int S3C2443_URSTCON_FUNCRST ; 
 int S3C2443_URSTCON_PHYRST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	u32 cfg;

	cfg = FUNC1(S3C2443_PWRCFG) | S3C2443_PWRCFG_USBPHY;
	FUNC2(cfg, S3C2443_PWRCFG);

	cfg = FUNC1(S3C2443_URSTCON);
	cfg |= (S3C2443_URSTCON_FUNCRST | S3C2443_URSTCON_PHYRST);
	FUNC2(cfg, S3C2443_URSTCON);
	FUNC0(1);

	cfg = FUNC1(S3C2443_URSTCON);
	cfg &= ~(S3C2443_URSTCON_FUNCRST | S3C2443_URSTCON_PHYRST);
	FUNC2(cfg, S3C2443_URSTCON);

	cfg = FUNC1(S3C2443_PHYCTRL);
	cfg &= ~(S3C2443_PHYCTRL_CLKSEL | S3C2443_PHYCTRL_DSPORT);
	cfg |= (S3C2443_PHYCTRL_EXTCLK | S3C2443_PHYCTRL_PLLSEL);
	FUNC2(cfg, S3C2443_PHYCTRL);

	cfg = FUNC1(S3C2443_PHYPWR);
	cfg &= ~(S3C2443_PHYPWR_FSUSPEND | S3C2443_PHYPWR_PLL_PWRDN |
		S3C2443_PHYPWR_XO_ON | S3C2443_PHYPWR_PLL_REFCLK |
		S3C2443_PHYPWR_ANALOG_PD);
	cfg |= S3C2443_PHYPWR_COMMON_ON;
	FUNC2(cfg, S3C2443_PHYPWR);

	cfg = FUNC1(S3C2443_UCLKCON);
	cfg |= (S3C2443_UCLKCON_DETECT_VBUS | S3C2443_UCLKCON_FUNC_CLKEN |
		S3C2443_UCLKCON_TCLKEN);
	FUNC2(cfg, S3C2443_UCLKCON);
}