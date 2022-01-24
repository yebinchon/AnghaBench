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
struct priv {int /*<<< orphan*/  clk; scalar_t__ base; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int CTRL_PHY_SHUTDOWN ; 
 int MODE_2_FORCE_PU_RX ; 
 int MODE_2_FORCE_PU_TX ; 
 int MODE_2_PU_IVREF ; 
 int MODE_2_PU_PLL ; 
 scalar_t__ SATA_IF_CTRL ; 
 scalar_t__ SATA_PHY_MODE_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct priv* FUNC2 (struct phy*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct phy *phy)
{
	struct priv *priv = FUNC2(phy);
	u32 reg;

	FUNC1(priv->clk);

	/* Enable PLL and IVREF */
	reg = FUNC3(priv->base + SATA_PHY_MODE_2);
	reg |= (MODE_2_FORCE_PU_TX | MODE_2_FORCE_PU_RX |
		MODE_2_PU_PLL | MODE_2_PU_IVREF);
	FUNC4(reg , priv->base + SATA_PHY_MODE_2);

	/* Enable PHY */
	reg = FUNC3(priv->base + SATA_IF_CTRL);
	reg &= ~CTRL_PHY_SHUTDOWN;
	FUNC4(reg, priv->base + SATA_IF_CTRL);

	FUNC0(priv->clk);

	return 0;
}