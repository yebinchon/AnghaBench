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
struct r8192_priv {scalar_t__ IC_Cut; scalar_t__ rf_type; int* AntennaTxPwDiff; int CrystalCap; } ;
struct net_device {int dummy; } ;
typedef  enum rf90_radio_path { ____Placeholder_rf90_radio_path } rf90_radio_path ;
typedef  enum hw90_block { ____Placeholder_hw90_block } hw90_block ;

/* Variables and functions */
 int /*<<< orphan*/  BB_GLOBAL_RESET ; 
 scalar_t__ BB_GLOBAL_RESET_BIT ; 
 int /*<<< orphan*/  BaseBand_Config_AGC_TAB ; 
 int /*<<< orphan*/  BaseBand_Config_PHY_REG ; 
 int COMP_ERR ; 
 int COMP_PHY ; 
 int /*<<< orphan*/  CPU_GEN ; 
 int CPU_GEN_BB_RST ; 
 scalar_t__ HW90_BLOCK_PHY0 ; 
 scalar_t__ HW90_BLOCK_PHY1 ; 
 scalar_t__ RF_2T4R ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ VERSION_8190_BD ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int bCCKEn ; 
 int bOFDMEn ; 
 int bXBTxAGC ; 
 int bXCTxAGC ; 
 int bXDTxAGC ; 
 int bXtalCap92x ; 
 int /*<<< orphan*/  rFPGA0_AnalogParameter1 ; 
 int /*<<< orphan*/  rFPGA0_RFMOD ; 
 int /*<<< orphan*/  rFPGA0_TxGainStage ; 
 int FUNC2 (struct net_device*,int,int) ; 
 scalar_t__ FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 struct r8192_priv* FUNC8 (struct net_device*) ; 

__attribute__((used)) static bool FUNC9(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC8(dev);
	bool rtStatus = true;
	u8 bRegValue = 0, eCheckItem = 0;
	u32 dwRegValue = 0;

	bRegValue = FUNC3(dev, BB_GLOBAL_RESET);
	FUNC6(dev, BB_GLOBAL_RESET, (bRegValue|BB_GLOBAL_RESET_BIT));

	dwRegValue = FUNC4(dev, CPU_GEN);
	FUNC7(dev, CPU_GEN, (dwRegValue&(~CPU_GEN_BB_RST)));

	for (eCheckItem = (enum hw90_block)HW90_BLOCK_PHY0;
	     eCheckItem <= HW90_BLOCK_PHY1; eCheckItem++) {
		rtStatus  = FUNC2(dev,
						   (enum hw90_block)eCheckItem,
						   (enum rf90_radio_path)0);
		if (!rtStatus) {
			FUNC0((COMP_ERR | COMP_PHY),
				 "rtl92e_config_rf():Check PHY%d Fail!!\n",
				 eCheckItem-1);
			return rtStatus;
		}
	}
	FUNC5(dev, rFPGA0_RFMOD, bCCKEn|bOFDMEn, 0x0);
	FUNC1(dev, BaseBand_Config_PHY_REG);

	dwRegValue = FUNC4(dev, CPU_GEN);
	FUNC7(dev, CPU_GEN, (dwRegValue|CPU_GEN_BB_RST));

	FUNC1(dev, BaseBand_Config_AGC_TAB);

	if (priv->IC_Cut  > VERSION_8190_BD) {
		if (priv->rf_type == RF_2T4R)
			dwRegValue = priv->AntennaTxPwDiff[2]<<8 |
				      priv->AntennaTxPwDiff[1]<<4 |
				      priv->AntennaTxPwDiff[0];
		else
			dwRegValue = 0x0;
		FUNC5(dev, rFPGA0_TxGainStage,
				  (bXBTxAGC|bXCTxAGC|bXDTxAGC), dwRegValue);


		dwRegValue = priv->CrystalCap;
		FUNC5(dev, rFPGA0_AnalogParameter1, bXtalCap92x,
				  dwRegValue);
	}

	return rtStatus;
}