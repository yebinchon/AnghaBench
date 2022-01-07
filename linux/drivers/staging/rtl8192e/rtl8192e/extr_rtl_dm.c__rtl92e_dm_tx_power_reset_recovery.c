
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {size_t rfa_txpowertrackingindex; size_t CCKPresentAttentuation; size_t rfc_txpowertrackingindex; int bcck_in_ch14; } ;
struct net_device {int dummy; } ;


 int COMP_POWER_TRACKING ;
 int RT_TRACE (int ,char*,...) ;
 int bMaskDWord ;
 size_t* dm_tx_bb_gain ;
 size_t dm_tx_bb_gain_idx_to_amplify (size_t) ;
 int rOFDM0_XATxIQImbalance ;
 int rOFDM0_XCTxIQImbalance ;
 int rtl92e_dm_cck_txpower_adjust (struct net_device*,int ) ;
 int rtl92e_set_bb_reg (struct net_device*,int ,int ,size_t) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_dm_tx_power_reset_recovery(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 RT_TRACE(COMP_POWER_TRACKING, "Start Reset Recovery ==>\n");
 rtl92e_set_bb_reg(dev, rOFDM0_XATxIQImbalance, bMaskDWord,
     dm_tx_bb_gain[priv->rfa_txpowertrackingindex]);
 RT_TRACE(COMP_POWER_TRACKING, "Reset Recovery: Fill in 0xc80 is %08x\n",
   dm_tx_bb_gain[priv->rfa_txpowertrackingindex]);
 RT_TRACE(COMP_POWER_TRACKING,
   "Reset Recovery: Fill in RFA_txPowerTrackingIndex is %x\n",
   priv->rfa_txpowertrackingindex);
 RT_TRACE(COMP_POWER_TRACKING,
   "Reset Recovery : RF A I/Q Amplify Gain is %d\n",
   dm_tx_bb_gain_idx_to_amplify(priv->rfa_txpowertrackingindex));
 RT_TRACE(COMP_POWER_TRACKING,
   "Reset Recovery: CCK Attenuation is %d dB\n",
   priv->CCKPresentAttentuation);
 rtl92e_dm_cck_txpower_adjust(dev, priv->bcck_in_ch14);

 rtl92e_set_bb_reg(dev, rOFDM0_XCTxIQImbalance, bMaskDWord,
     dm_tx_bb_gain[priv->rfc_txpowertrackingindex]);
 RT_TRACE(COMP_POWER_TRACKING, "Reset Recovery: Fill in 0xc90 is %08x\n",
   dm_tx_bb_gain[priv->rfc_txpowertrackingindex]);
 RT_TRACE(COMP_POWER_TRACKING,
   "Reset Recovery: Fill in RFC_txPowerTrackingIndex is %x\n",
   priv->rfc_txpowertrackingindex);
 RT_TRACE(COMP_POWER_TRACKING,
   "Reset Recovery : RF C I/Q Amplify Gain is %d\n",
   dm_tx_bb_gain_idx_to_amplify(priv->rfc_txpowertrackingindex));
}
