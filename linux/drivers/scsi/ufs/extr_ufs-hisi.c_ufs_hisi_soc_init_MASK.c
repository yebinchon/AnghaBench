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
struct ufs_hisi_host {int /*<<< orphan*/  rst; } ;
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_SYSCTRL_LP_ISOL_EN ; 
 int /*<<< orphan*/  BIT_SYSCTRL_LP_RESET_N ; 
 int /*<<< orphan*/  BIT_SYSCTRL_PSW_CLK_EN ; 
 int /*<<< orphan*/  BIT_SYSCTRL_PWR_READY ; 
 int BIT_UFS_DEVICE_RESET ; 
 int /*<<< orphan*/  BIT_UFS_PHY_ISO_CTRL ; 
 int /*<<< orphan*/  BIT_UFS_PSW_ISO_CTRL ; 
 int /*<<< orphan*/  BIT_UFS_PSW_MTCMOS_EN ; 
 int /*<<< orphan*/  CLOCK_GATE_BYPASS ; 
 int /*<<< orphan*/  HC_LP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MASK_SYSCTRL_CFG_CLOCK_FREQ ; 
 int /*<<< orphan*/  MASK_SYSCTRL_REF_CLOCK_SEL ; 
 int /*<<< orphan*/  MASK_UFS_CLK_GATE_BYPASS ; 
 int MASK_UFS_DEVICE_RESET ; 
 int /*<<< orphan*/  MASK_UFS_SYSCRTL_BYPASS ; 
 int /*<<< orphan*/  PHY_CLK_CTRL ; 
 int /*<<< orphan*/  PHY_ISO_EN ; 
 int /*<<< orphan*/  PSW_CLK_CTRL ; 
 int /*<<< orphan*/  PSW_POWER_CTRL ; 
 int /*<<< orphan*/  RESET_CTRL_EN ; 
 int /*<<< orphan*/  UFS_DEVICE_RESET_CTRL ; 
 int UFS_FREQ_CFG_CLK ; 
 int /*<<< orphan*/  UFS_SYSCTRL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ufs_hisi_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ufs_hisi_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ufs_hisi_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ufs_hisi_host*,int,int /*<<< orphan*/ ) ; 
 struct ufs_hisi_host* FUNC10 (struct ufs_hba*) ; 

__attribute__((used)) static void FUNC11(struct ufs_hba *hba)
{
	struct ufs_hisi_host *host = FUNC10(hba);
	u32 reg;

	if (!FUNC0(host->rst))
		FUNC3(host->rst);

	/* HC_PSW powerup */
	FUNC8(host, BIT_UFS_PSW_MTCMOS_EN, PSW_POWER_CTRL);
	FUNC5(10);
	/* notify PWR ready */
	FUNC8(host, BIT_SYSCTRL_PWR_READY, HC_LP_CTRL);
	FUNC9(host, MASK_UFS_DEVICE_RESET | 0,
		UFS_DEVICE_RESET_CTRL);

	reg = FUNC7(host, PHY_CLK_CTRL);
	reg = (reg & ~MASK_SYSCTRL_CFG_CLOCK_FREQ) | UFS_FREQ_CFG_CLK;
	/* set cfg clk freq */
	FUNC9(host, reg, PHY_CLK_CTRL);
	/* set ref clk freq */
	FUNC6(host, MASK_SYSCTRL_REF_CLOCK_SEL, PHY_CLK_CTRL);
	/* bypass ufs clk gate */
	FUNC8(host, MASK_UFS_CLK_GATE_BYPASS,
						 CLOCK_GATE_BYPASS);
	FUNC8(host, MASK_UFS_SYSCRTL_BYPASS, UFS_SYSCTRL);

	/* open psw clk */
	FUNC8(host, BIT_SYSCTRL_PSW_CLK_EN, PSW_CLK_CTRL);
	/* disable ufshc iso */
	FUNC6(host, BIT_UFS_PSW_ISO_CTRL, PSW_POWER_CTRL);
	/* disable phy iso */
	FUNC6(host, BIT_UFS_PHY_ISO_CTRL, PHY_ISO_EN);
	/* notice iso disable */
	FUNC6(host, BIT_SYSCTRL_LP_ISOL_EN, HC_LP_CTRL);

	/* disable lp_reset_n */
	FUNC8(host, BIT_SYSCTRL_LP_RESET_N, RESET_CTRL_EN);
	FUNC1(1);

	FUNC9(host, MASK_UFS_DEVICE_RESET | BIT_UFS_DEVICE_RESET,
		UFS_DEVICE_RESET_CTRL);

	FUNC2(20);

	/*
	 * enable the fix of linereset recovery,
	 * and enable rx_reset/tx_rest beat
	 * enable ref_clk_en override(bit5) &
	 * override value = 1(bit4), with mask
	 */
	FUNC9(host, 0x03300330, UFS_DEVICE_RESET_CTRL);

	if (!FUNC0(host->rst))
		FUNC4(host->rst);
}