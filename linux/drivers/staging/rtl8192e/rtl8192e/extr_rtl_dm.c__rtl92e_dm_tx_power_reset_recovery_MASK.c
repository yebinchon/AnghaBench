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
struct r8192_priv {size_t rfa_txpowertrackingindex; size_t CCKPresentAttentuation; size_t rfc_txpowertrackingindex; int /*<<< orphan*/  bcck_in_ch14; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_POWER_TRACKING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  bMaskDWord ; 
 size_t* dm_tx_bb_gain ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  rOFDM0_XATxIQImbalance ; 
 int /*<<< orphan*/  rOFDM0_XCTxIQImbalance ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct r8192_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC4(dev);

	FUNC0(COMP_POWER_TRACKING, "Start Reset Recovery ==>\n");
	FUNC3(dev, rOFDM0_XATxIQImbalance, bMaskDWord,
			  dm_tx_bb_gain[priv->rfa_txpowertrackingindex]);
	FUNC0(COMP_POWER_TRACKING, "Reset Recovery: Fill in 0xc80 is %08x\n",
		 dm_tx_bb_gain[priv->rfa_txpowertrackingindex]);
	FUNC0(COMP_POWER_TRACKING,
		 "Reset Recovery: Fill in RFA_txPowerTrackingIndex is %x\n",
		 priv->rfa_txpowertrackingindex);
	FUNC0(COMP_POWER_TRACKING,
		 "Reset Recovery : RF A I/Q Amplify Gain is %d\n",
		 FUNC1(priv->rfa_txpowertrackingindex));
	FUNC0(COMP_POWER_TRACKING,
		 "Reset Recovery: CCK Attenuation is %d dB\n",
		 priv->CCKPresentAttentuation);
	FUNC2(dev, priv->bcck_in_ch14);

	FUNC3(dev, rOFDM0_XCTxIQImbalance, bMaskDWord,
			  dm_tx_bb_gain[priv->rfc_txpowertrackingindex]);
	FUNC0(COMP_POWER_TRACKING, "Reset Recovery: Fill in 0xc90 is %08x\n",
		 dm_tx_bb_gain[priv->rfc_txpowertrackingindex]);
	FUNC0(COMP_POWER_TRACKING,
		 "Reset Recovery: Fill in RFC_txPowerTrackingIndex is %x\n",
		 priv->rfc_txpowertrackingindex);
	FUNC0(COMP_POWER_TRACKING,
		 "Reset Recovery : RF C I/Q Amplify Gain is %d\n",
		 FUNC1(priv->rfc_txpowertrackingindex));
}