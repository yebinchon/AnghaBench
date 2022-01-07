
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct r8192_priv {scalar_t__ rf_chip; int* RfReg0Value; TYPE_1__* PHYRegDef; } ;
struct net_device {int dummy; } ;
typedef enum rf90_radio_path_e { ____Placeholder_rf90_radio_path_e } rf90_radio_path_e ;
struct TYPE_2__ {int rf3wireOffset; } ;
typedef TYPE_1__ BB_REGISTER_DEFINITION_T ;


 int COMP_ERR ;
 int COMP_PHY ;
 scalar_t__ RF_8256 ;
 int RT_TRACE (int,char*) ;
 int bMaskDWord ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_setBBreg (struct net_device*,int ,int ,int) ;

__attribute__((used)) static void rtl8192_phy_RFSerialWrite(struct net_device *dev,
          enum rf90_radio_path_e e_rfpath,
          u32 offset,
          u32 data)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u32 DataAndAddr = 0, new_offset = 0;
 BB_REGISTER_DEFINITION_T *pPhyReg = &priv->PHYRegDef[e_rfpath];

 offset &= 0x3f;
 if (priv->rf_chip == RF_8256) {

  if (offset >= 31) {
   priv->RfReg0Value[e_rfpath] |= 0x140;
   rtl8192_setBBreg(dev, pPhyReg->rf3wireOffset,
      bMaskDWord,
      priv->RfReg0Value[e_rfpath] << 16);
   new_offset = offset - 30;
  } else if (offset >= 16) {
   priv->RfReg0Value[e_rfpath] |= 0x100;
   priv->RfReg0Value[e_rfpath] &= (~0x40);
   rtl8192_setBBreg(dev, pPhyReg->rf3wireOffset,
      bMaskDWord,
      priv->RfReg0Value[e_rfpath]<<16);
   new_offset = offset - 15;
  } else {
   new_offset = offset;
  }
 } else {
  RT_TRACE((COMP_PHY|COMP_ERR),
    "check RF type here, need to be 8256\n");
  new_offset = offset;
 }


 DataAndAddr = (data<<16) | (new_offset&0x3f);


 rtl8192_setBBreg(dev, pPhyReg->rf3wireOffset, bMaskDWord, DataAndAddr);


 if (offset == 0x0)
  priv->RfReg0Value[e_rfpath] = data;


 if (priv->rf_chip == RF_8256) {
  if (offset != 0) {
   priv->RfReg0Value[e_rfpath] &= 0xebf;
   rtl8192_setBBreg(dev, pPhyReg->rf3wireOffset,
      bMaskDWord,
      priv->RfReg0Value[e_rfpath] << 16);
  }
 }
}
