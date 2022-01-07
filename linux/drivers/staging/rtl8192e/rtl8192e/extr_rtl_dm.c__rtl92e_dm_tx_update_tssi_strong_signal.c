
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct r8192_priv {int rfa_txpowertrackingindex; int rfc_txpowertrackingindex; size_t rfa_txpowertrackingindex_real; size_t rfc_txpowertrackingindex_real; } ;
struct net_device {int dummy; } ;


 scalar_t__ RF_2T4R ;
 int TxBBGainTableLength ;
 int bMaskDWord ;
 int * dm_tx_bb_gain ;
 int rOFDM0_XATxIQImbalance ;
 int rOFDM0_XCTxIQImbalance ;
 int rtl92e_set_bb_reg (struct net_device*,int ,int ,int ) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_dm_tx_update_tssi_strong_signal(struct net_device *dev,
          u8 RF_Type)
{
 struct r8192_priv *p = rtllib_priv(dev);

 if (RF_Type == RF_2T4R) {
  if ((p->rfa_txpowertrackingindex < TxBBGainTableLength - 1) &&
      (p->rfc_txpowertrackingindex < TxBBGainTableLength - 1)) {
   p->rfa_txpowertrackingindex++;
   p->rfa_txpowertrackingindex_real++;
   rtl92e_set_bb_reg(dev, rOFDM0_XATxIQImbalance,
       bMaskDWord,
       dm_tx_bb_gain[p->rfa_txpowertrackingindex_real]);
   p->rfc_txpowertrackingindex++;
   p->rfc_txpowertrackingindex_real++;
   rtl92e_set_bb_reg(dev, rOFDM0_XCTxIQImbalance,
       bMaskDWord,
       dm_tx_bb_gain[p->rfc_txpowertrackingindex_real]);
  } else {
   rtl92e_set_bb_reg(dev, rOFDM0_XATxIQImbalance,
       bMaskDWord,
       dm_tx_bb_gain[TxBBGainTableLength - 1]);
   rtl92e_set_bb_reg(dev, rOFDM0_XCTxIQImbalance,
       bMaskDWord,
       dm_tx_bb_gain[TxBBGainTableLength - 1]);
  }
 } else {
  if (p->rfa_txpowertrackingindex < (TxBBGainTableLength - 1)) {
   p->rfa_txpowertrackingindex++;
   p->rfa_txpowertrackingindex_real++;
   rtl92e_set_bb_reg(dev, rOFDM0_XATxIQImbalance,
       bMaskDWord,
       dm_tx_bb_gain[p->rfa_txpowertrackingindex_real]);
  } else {
   rtl92e_set_bb_reg(dev, rOFDM0_XATxIQImbalance,
       bMaskDWord,
       dm_tx_bb_gain[TxBBGainTableLength - 1]);
  }
 }
}
