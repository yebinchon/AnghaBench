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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct r8192_priv {scalar_t__ card_8192_version; int* AntennaTxPwDiff; int CrystalCap; scalar_t__ bCckHighPower; } ;
struct net_device {int dummy; } ;
typedef  enum rf90_radio_path_e { ____Placeholder_rf90_radio_path_e } rf90_radio_path_e ;
typedef  enum hw90_block_e { ____Placeholder_hw90_block_e } hw90_block_e ;

/* Variables and functions */
 int /*<<< orphan*/  BASEBAND_CONFIG_AGC_TAB ; 
 int /*<<< orphan*/  BASEBAND_CONFIG_PHY_REG ; 
 int /*<<< orphan*/  BB_GLOBAL_RESET ; 
 scalar_t__ BB_GLOBAL_RESET_BIT ; 
 int COMP_ERR ; 
 int COMP_PHY ; 
 int /*<<< orphan*/  CPU_GEN ; 
 int CPU_GEN_BB_RST ; 
 scalar_t__ HW90_BLOCK_PHY0 ; 
 scalar_t__ HW90_BLOCK_PHY1 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ VERSION_819XU_A ; 
 int bCCKEn ; 
 int bOFDMEn ; 
 int bXBTxAGC ; 
 int bXCTxAGC ; 
 int bXtalCap ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  rFPGA0_AnalogParameter1 ; 
 int /*<<< orphan*/  rFPGA0_RFMOD ; 
 int /*<<< orphan*/  rFPGA0_TxGainStage ; 
 int /*<<< orphan*/  rFPGA0_XA_HSSIParameter2 ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC1(dev);
	u8 reg_u8 = 0, eCheckItem = 0, status = 0;
	u32 reg_u32 = 0;

	/**************************************
	 * <1> Initialize BaseBand
	 *************************************/

	/* --set BB Global Reset-- */
	FUNC3(dev, BB_GLOBAL_RESET, &reg_u8);
	FUNC9(dev, BB_GLOBAL_RESET, (reg_u8|BB_GLOBAL_RESET_BIT));
	FUNC2(50);
	/* ---set BB reset Active--- */
	FUNC4(dev, CPU_GEN, &reg_u32);
	FUNC11(dev, CPU_GEN, (reg_u32&(~CPU_GEN_BB_RST)));

	/* ----Ckeck FPGAPHY0 and PHY1 board is OK---- */
	/* TODO: this function should be removed on ASIC */
	for (eCheckItem = (enum hw90_block_e)HW90_BLOCK_PHY0;
	     eCheckItem <= HW90_BLOCK_PHY1; eCheckItem++) {
		/* don't care RF path */
		status = FUNC7(dev, (enum hw90_block_e)eCheckItem,
						  (enum rf90_radio_path_e)0);
		if (status != 0) {
			FUNC0((COMP_ERR | COMP_PHY),
				 "phy_rf8256_config(): Check PHY%d Fail!!\n",
				 eCheckItem-1);
			return;
		}
	}
	/* ---- Set CCK and OFDM Block "OFF"---- */
	FUNC8(dev, rFPGA0_RFMOD, bCCKEn|bOFDMEn, 0x0);
	/* ----BB Register Initilazation---- */
	/* ==m==>Set PHY REG From Header<==m== */
	FUNC6(dev, BASEBAND_CONFIG_PHY_REG);

	/* ----Set BB reset de-Active---- */
	FUNC4(dev, CPU_GEN, &reg_u32);
	FUNC11(dev, CPU_GEN, (reg_u32|CPU_GEN_BB_RST));

	/* ----BB AGC table Initialization---- */
	/* ==m==>Set PHY REG From Header<==m== */
	FUNC6(dev, BASEBAND_CONFIG_AGC_TAB);

	/* ----Enable XSTAL ---- */
	FUNC10(dev, 0x5e, 0x00);
	if (priv->card_8192_version == VERSION_819XU_A) {
		/* Antenna gain offset from B/C/D to A */
		reg_u32 = priv->AntennaTxPwDiff[1]<<4 |
			   priv->AntennaTxPwDiff[0];
		FUNC8(dev, rFPGA0_TxGainStage, (bXBTxAGC|bXCTxAGC),
				 reg_u32);

		/* XSTALLCap */
		reg_u32 = priv->CrystalCap & 0xf;
		FUNC8(dev, rFPGA0_AnalogParameter1, bXtalCap,
				 reg_u32);
	}

	/* Check if the CCK HighPower is turned ON.
	 * This is used to calculate PWDB.
	 */
	priv->bCckHighPower = (u8)FUNC5(dev,
						     rFPGA0_XA_HSSIParameter2,
						     0x200);
}