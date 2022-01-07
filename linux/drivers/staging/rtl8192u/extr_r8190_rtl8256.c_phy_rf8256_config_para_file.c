
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct r8192_priv {size_t NumTotalRFPath; TYPE_1__* PHYRegDef; } ;
struct net_device {int dummy; } ;
typedef enum rf90_radio_path_e { ____Placeholder_rf90_radio_path_e } rf90_radio_path_e ;
struct TYPE_2__ {int rfintfs; int rfHSSIPara2; int rfintfo; int rfintfe; } ;
typedef TYPE_1__ BB_REGISTER_DEFINITION_T ;


 int COMP_ERR ;
 int COMP_PHY ;
 int COMP_RF ;
 int HW90_BLOCK_RF ;




 int RT_TRACE (int ,char*,...) ;
 int b3WireAddressLength ;
 int b3WireDataLength ;
 int bMask12Bits ;
 int bRFSI_RFENV ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_QueryBBReg (struct net_device*,int ,int) ;
 int rtl8192_phy_CheckIsLegalRFPath (struct net_device*,size_t) ;
 size_t rtl8192_phy_ConfigRFWithHeaderFile (struct net_device*,int) ;
 int rtl8192_phy_QueryRFReg (struct net_device*,int,int,int ) ;
 int rtl8192_phy_SetRFReg (struct net_device*,int,int,int ,int) ;
 scalar_t__ rtl8192_phy_checkBBAndRF (struct net_device*,int ,int) ;
 int rtl8192_setBBreg (struct net_device*,int ,int,int) ;

__attribute__((used)) static void phy_rf8256_config_para_file(struct net_device *dev)
{
 u32 u4RegValue = 0;
 u8 eRFPath;
 BB_REGISTER_DEFINITION_T *pPhyReg;
 struct r8192_priv *priv = ieee80211_priv(dev);
 u32 RegOffSetToBeCheck = 0x3;
 u32 RegValueToBeCheck = 0x7f1;
 u32 RF3_Final_Value = 0;
 u8 ConstRetryTimes = 5, RetryTimes = 5;
 u8 ret = 0;

 for (eRFPath = (enum rf90_radio_path_e)131; eRFPath < priv->NumTotalRFPath; eRFPath++) {
  if (!rtl8192_phy_CheckIsLegalRFPath(dev, eRFPath))
   continue;

  pPhyReg = &priv->PHYRegDef[eRFPath];





  switch (eRFPath) {
  case 131:
  case 129:
   u4RegValue = rtl8192_QueryBBReg(dev, pPhyReg->rfintfs, bRFSI_RFENV);
   break;
  case 130:
  case 128:
   u4RegValue = rtl8192_QueryBBReg(dev, pPhyReg->rfintfs, bRFSI_RFENV << 16);
   break;
  }


  rtl8192_setBBreg(dev, pPhyReg->rfintfe, bRFSI_RFENV << 16, 0x1);


  rtl8192_setBBreg(dev, pPhyReg->rfintfo, bRFSI_RFENV, 0x1);


  rtl8192_setBBreg(dev, pPhyReg->rfHSSIPara2, b3WireAddressLength, 0x0);
  rtl8192_setBBreg(dev, pPhyReg->rfHSSIPara2, b3WireDataLength, 0x0);

  rtl8192_phy_SetRFReg(dev, (enum rf90_radio_path_e)eRFPath, 0x0, bMask12Bits, 0xbf);




  if (rtl8192_phy_checkBBAndRF(dev, HW90_BLOCK_RF, (enum rf90_radio_path_e)eRFPath)) {
   RT_TRACE(COMP_ERR, "phy_rf8256_config():Check Radio[%d] Fail!!\n", eRFPath);
   goto phy_RF8256_Config_ParaFile_Fail;
  }

  RetryTimes = ConstRetryTimes;
  RF3_Final_Value = 0;

  switch (eRFPath) {
  case 131:
   while (RF3_Final_Value != RegValueToBeCheck && RetryTimes != 0) {
    ret = rtl8192_phy_ConfigRFWithHeaderFile(dev, (enum rf90_radio_path_e)eRFPath);
    RF3_Final_Value = rtl8192_phy_QueryRFReg(dev, (enum rf90_radio_path_e)eRFPath, RegOffSetToBeCheck, bMask12Bits);
    RT_TRACE(COMP_RF, "RF %d %d register final value: %x\n", eRFPath, RegOffSetToBeCheck, RF3_Final_Value);
    RetryTimes--;
   }
   break;
  case 130:
   while (RF3_Final_Value != RegValueToBeCheck && RetryTimes != 0) {
    ret = rtl8192_phy_ConfigRFWithHeaderFile(dev, (enum rf90_radio_path_e)eRFPath);
    RF3_Final_Value = rtl8192_phy_QueryRFReg(dev, (enum rf90_radio_path_e)eRFPath, RegOffSetToBeCheck, bMask12Bits);
    RT_TRACE(COMP_RF, "RF %d %d register final value: %x\n", eRFPath, RegOffSetToBeCheck, RF3_Final_Value);
    RetryTimes--;
   }
   break;
  case 129:
   while (RF3_Final_Value != RegValueToBeCheck && RetryTimes != 0) {
    ret = rtl8192_phy_ConfigRFWithHeaderFile(dev, (enum rf90_radio_path_e)eRFPath);
    RF3_Final_Value = rtl8192_phy_QueryRFReg(dev, (enum rf90_radio_path_e)eRFPath, RegOffSetToBeCheck, bMask12Bits);
    RT_TRACE(COMP_RF, "RF %d %d register final value: %x\n", eRFPath, RegOffSetToBeCheck, RF3_Final_Value);
    RetryTimes--;
   }
   break;
  case 128:
   while (RF3_Final_Value != RegValueToBeCheck && RetryTimes != 0) {
    ret = rtl8192_phy_ConfigRFWithHeaderFile(dev, (enum rf90_radio_path_e)eRFPath);
    RF3_Final_Value = rtl8192_phy_QueryRFReg(dev, (enum rf90_radio_path_e)eRFPath, RegOffSetToBeCheck, bMask12Bits);
    RT_TRACE(COMP_RF, "RF %d %d register final value: %x\n", eRFPath, RegOffSetToBeCheck, RF3_Final_Value);
    RetryTimes--;
   }
   break;
  }


  switch (eRFPath) {
  case 131:
  case 129:
   rtl8192_setBBreg(dev, pPhyReg->rfintfs, bRFSI_RFENV, u4RegValue);
   break;
  case 130:
  case 128:
   rtl8192_setBBreg(dev, pPhyReg->rfintfs, bRFSI_RFENV << 16, u4RegValue);
   break;
  }

  if (ret) {
   RT_TRACE(COMP_ERR, "phy_rf8256_config_para_file():Radio[%d] Fail!!", eRFPath);
   goto phy_RF8256_Config_ParaFile_Fail;
  }
 }

 RT_TRACE(COMP_PHY, "PHY Initialization Success\n");
 return;

phy_RF8256_Config_ParaFile_Fail:
 RT_TRACE(COMP_ERR, "PHY Initialization failed\n");
}
