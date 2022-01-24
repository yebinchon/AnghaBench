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
struct phy_berlin_usb_priv {int pll_divider; scalar_t__ base; int /*<<< orphan*/  rst_ctrl; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int ACK_LENGTH_16_CL ; 
 int FUNC0 (int) ; 
 int CLK_BLK_EN ; 
 int CLK_STABLE ; 
 int DISCON_THRESHOLD_270 ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int EXT_HS_RCAL_EN ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int IMP_CAL_FS_HS_DLY_3 ; 
 int INTPL_CUR_30 ; 
 int KVC0_REG_CTRL ; 
 int FUNC6 (int) ; 
 int PHASE_FREEZE_DLY_4_CL ; 
 int PHASE_OFF_TOL_250 ; 
 int PLL_CTRL_REG ; 
 int R_ROTATE_0 ; 
 int SQ_LENGTH_12 ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int TX_VDD12_13 ; 
 scalar_t__ USB_PHY_ANALOG ; 
 scalar_t__ USB_PHY_PLL ; 
 scalar_t__ USB_PHY_PLL_CONTROL ; 
 scalar_t__ USB_PHY_RX_CTRL ; 
 scalar_t__ USB_PHY_TX_CTRL0 ; 
 scalar_t__ USB_PHY_TX_CTRL1 ; 
 scalar_t__ USB_PHY_TX_CTRL2 ; 
 int FUNC10 (int) ; 
 struct phy_berlin_usb_priv* FUNC11 (struct phy*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct phy *phy)
{
	struct phy_berlin_usb_priv *priv = FUNC11(phy);

	FUNC12(priv->rst_ctrl);

	FUNC13(priv->pll_divider,
	       priv->base + USB_PHY_PLL);
	FUNC13(CLK_STABLE | PLL_CTRL_REG | PHASE_OFF_TOL_250 | KVC0_REG_CTRL |
	       CLK_BLK_EN, priv->base + USB_PHY_PLL_CONTROL);
	FUNC13(FUNC10(0x5) | R_ROTATE_0 | FUNC0(0x5),
	       priv->base + USB_PHY_ANALOG);
	FUNC13(PHASE_FREEZE_DLY_4_CL | ACK_LENGTH_16_CL | SQ_LENGTH_12 |
	       DISCON_THRESHOLD_270 | FUNC7(0xa) | FUNC6(0x2) |
	       INTPL_CUR_30, priv->base + USB_PHY_RX_CTRL);

	FUNC13(TX_VDD12_13 | FUNC9(0x3), priv->base + USB_PHY_TX_CTRL1);
	FUNC13(EXT_HS_RCAL_EN | FUNC5(0x3) | FUNC3(0x4),
	       priv->base + USB_PHY_TX_CTRL0);

	FUNC13(EXT_HS_RCAL_EN | FUNC5(0x3) | FUNC3(0x4) |
	       FUNC2(0x2), priv->base + USB_PHY_TX_CTRL0);

	FUNC13(EXT_HS_RCAL_EN | FUNC5(0x3) | FUNC3(0x4),
	       priv->base + USB_PHY_TX_CTRL0);
	FUNC13(FUNC8(0xf) | FUNC1(0x3) | IMP_CAL_FS_HS_DLY_3 |
	       FUNC4(0xd), priv->base + USB_PHY_TX_CTRL2);

	return 0;
}