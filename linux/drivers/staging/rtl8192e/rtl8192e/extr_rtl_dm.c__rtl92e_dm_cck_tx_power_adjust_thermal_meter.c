
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8192_priv {size_t CCK_index; } ;
struct net_device {int dummy; } ;


 int** CCKSwingTable_Ch14 ;
 int** CCKSwingTable_Ch1_Ch13 ;
 int COMP_POWER_TRACKING ;
 int RT_TRACE (int ,char*,int ,int) ;
 int bMaskDWord ;
 int bMaskHWord ;
 int bMaskLWord ;
 int rCCK0_DebugPort ;
 int rCCK0_TxFilter1 ;
 int rCCK0_TxFilter2 ;
 int rtl92e_set_bb_reg (struct net_device*,int ,int ,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_dm_cck_tx_power_adjust_thermal_meter(struct net_device *dev,
        bool bInCH14)
{
 u32 TempVal;
 struct r8192_priv *priv = rtllib_priv(dev);

 TempVal = 0;
 if (!bInCH14) {
  TempVal = CCKSwingTable_Ch1_Ch13[priv->CCK_index][0] +
     (CCKSwingTable_Ch1_Ch13[priv->CCK_index][1] << 8);
  rtl92e_set_bb_reg(dev, rCCK0_TxFilter1, bMaskHWord, TempVal);
  RT_TRACE(COMP_POWER_TRACKING,
    "CCK not chnl 14, reg 0x%x = 0x%x\n", rCCK0_TxFilter1,
    TempVal);
  TempVal = CCKSwingTable_Ch1_Ch13[priv->CCK_index][2] +
     (CCKSwingTable_Ch1_Ch13[priv->CCK_index][3] << 8) +
     (CCKSwingTable_Ch1_Ch13[priv->CCK_index][4] << 16)+
     (CCKSwingTable_Ch1_Ch13[priv->CCK_index][5] << 24);
  rtl92e_set_bb_reg(dev, rCCK0_TxFilter2, bMaskDWord, TempVal);
  RT_TRACE(COMP_POWER_TRACKING,
    "CCK not chnl 14, reg 0x%x = 0x%x\n", rCCK0_TxFilter2,
    TempVal);
  TempVal = CCKSwingTable_Ch1_Ch13[priv->CCK_index][6] +
     (CCKSwingTable_Ch1_Ch13[priv->CCK_index][7] << 8);

  rtl92e_set_bb_reg(dev, rCCK0_DebugPort, bMaskLWord, TempVal);
  RT_TRACE(COMP_POWER_TRACKING,
    "CCK not chnl 14, reg 0x%x = 0x%x\n", rCCK0_DebugPort,
    TempVal);
 } else {
  TempVal = CCKSwingTable_Ch14[priv->CCK_index][0] +
     (CCKSwingTable_Ch14[priv->CCK_index][1] << 8);

  rtl92e_set_bb_reg(dev, rCCK0_TxFilter1, bMaskHWord, TempVal);
  RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
   rCCK0_TxFilter1, TempVal);
  TempVal = CCKSwingTable_Ch14[priv->CCK_index][2] +
     (CCKSwingTable_Ch14[priv->CCK_index][3] << 8) +
     (CCKSwingTable_Ch14[priv->CCK_index][4] << 16)+
     (CCKSwingTable_Ch14[priv->CCK_index][5] << 24);
  rtl92e_set_bb_reg(dev, rCCK0_TxFilter2, bMaskDWord, TempVal);
  RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
   rCCK0_TxFilter2, TempVal);
  TempVal = CCKSwingTable_Ch14[priv->CCK_index][6] +
     (CCKSwingTable_Ch14[priv->CCK_index][7]<<8);

  rtl92e_set_bb_reg(dev, rCCK0_DebugPort, bMaskLWord, TempVal);
  RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
   rCCK0_DebugPort, TempVal);
 }
}
