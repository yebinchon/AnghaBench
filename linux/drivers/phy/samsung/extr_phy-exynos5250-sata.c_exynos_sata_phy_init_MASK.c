#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct phy {int dummy; } ;
struct exynos_sata_phy {TYPE_1__* phy; scalar_t__ regs; int /*<<< orphan*/  client; int /*<<< orphan*/  pmureg; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CTRL0_P0_PHY_CALIBRATED ; 
 int CTRL0_P0_PHY_CALIBRATED_SEL ; 
 int /*<<< orphan*/  EXYNOS5_SATAPHY_PMU_ENABLE ; 
 scalar_t__ EXYNOS5_SATA_CTRL0 ; 
 scalar_t__ EXYNOS5_SATA_MODE0 ; 
 scalar_t__ EXYNOS5_SATA_PHSATA_CTRLM ; 
 int /*<<< orphan*/  EXYNOS5_SATA_PHSATA_STATM ; 
 scalar_t__ EXYNOS5_SATA_RESET ; 
 int LINK_RESET ; 
 int PHCTRLM_HIGH_SPEED ; 
 int PHCTRLM_REF_RATE ; 
 int /*<<< orphan*/  PHSTATM_PLL_LOCKED ; 
 int RESET_CMN_BLOCK_RST_N ; 
 int RESET_CMN_I2C_RST_N ; 
 int RESET_CMN_RST_N ; 
 int RESET_GLOBAL_RST_N ; 
 int RESET_TX_RX_BLOCK_RST_N ; 
 int RESET_TX_RX_I2C_RST_N ; 
 int RESET_TX_RX_PIPE_RST_N ; 
 int /*<<< orphan*/  SATAPHY_CONTROL_OFFSET ; 
 int SATA_SPD_GEN3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 struct exynos_sata_phy* FUNC2 (struct phy*) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct phy *phy)
{
	u32 val = 0;
	int ret = 0;
	u8 buf[] = { 0x3a, 0x0b };
	struct exynos_sata_phy *sata_phy = FUNC2(phy);

	ret = FUNC4(sata_phy->pmureg, SATAPHY_CONTROL_OFFSET,
			EXYNOS5_SATAPHY_PMU_ENABLE, true);
	if (ret != 0)
		FUNC0(&sata_phy->phy->dev, "phy init failed\n");

	FUNC6(val, sata_phy->regs + EXYNOS5_SATA_RESET);

	val = FUNC3(sata_phy->regs + EXYNOS5_SATA_RESET);
	val |= RESET_GLOBAL_RST_N | RESET_CMN_RST_N | RESET_CMN_BLOCK_RST_N
		| RESET_CMN_I2C_RST_N | RESET_TX_RX_PIPE_RST_N
		| RESET_TX_RX_BLOCK_RST_N | RESET_TX_RX_I2C_RST_N;
	FUNC6(val, sata_phy->regs + EXYNOS5_SATA_RESET);

	val = FUNC3(sata_phy->regs + EXYNOS5_SATA_RESET);
	val |= LINK_RESET;
	FUNC6(val, sata_phy->regs + EXYNOS5_SATA_RESET);

	val = FUNC3(sata_phy->regs + EXYNOS5_SATA_RESET);
	val |= RESET_CMN_RST_N;
	FUNC6(val, sata_phy->regs + EXYNOS5_SATA_RESET);

	val = FUNC3(sata_phy->regs + EXYNOS5_SATA_PHSATA_CTRLM);
	val &= ~PHCTRLM_REF_RATE;
	FUNC6(val, sata_phy->regs + EXYNOS5_SATA_PHSATA_CTRLM);

	/* High speed enable for Gen3 */
	val = FUNC3(sata_phy->regs + EXYNOS5_SATA_PHSATA_CTRLM);
	val |= PHCTRLM_HIGH_SPEED;
	FUNC6(val, sata_phy->regs + EXYNOS5_SATA_PHSATA_CTRLM);

	val = FUNC3(sata_phy->regs + EXYNOS5_SATA_CTRL0);
	val |= CTRL0_P0_PHY_CALIBRATED_SEL | CTRL0_P0_PHY_CALIBRATED;
	FUNC6(val, sata_phy->regs + EXYNOS5_SATA_CTRL0);

	val = FUNC3(sata_phy->regs + EXYNOS5_SATA_MODE0);
	val |= SATA_SPD_GEN3;
	FUNC6(val, sata_phy->regs + EXYNOS5_SATA_MODE0);

	ret = FUNC1(sata_phy->client, buf, sizeof(buf));
	if (ret < 0)
		return ret;

	/* release cmu reset */
	val = FUNC3(sata_phy->regs + EXYNOS5_SATA_RESET);
	val &= ~RESET_CMN_RST_N;
	FUNC6(val, sata_phy->regs + EXYNOS5_SATA_RESET);

	val = FUNC3(sata_phy->regs + EXYNOS5_SATA_RESET);
	val |= RESET_CMN_RST_N;
	FUNC6(val, sata_phy->regs + EXYNOS5_SATA_RESET);

	ret = FUNC5(sata_phy->regs,
				EXYNOS5_SATA_PHSATA_STATM,
				PHSTATM_PLL_LOCKED, 1);
	if (ret < 0)
		FUNC0(&sata_phy->phy->dev,
			"PHY PLL locking failed\n");
	return ret;
}