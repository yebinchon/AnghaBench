
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8192_priv {scalar_t__ rf_chip; int* RfReg0Value; struct bb_reg_definition* PHYRegDef; } ;
struct net_device {int dummy; } ;
struct bb_reg_definition {int rf3wireOffset; } ;
typedef enum rf90_radio_path { ____Placeholder_rf90_radio_path } rf90_radio_path ;


 int COMP_ERR ;
 int COMP_PHY ;
 scalar_t__ RF_8256 ;
 int RT_TRACE (int,char*) ;
 int bMaskDWord ;
 int rFPGA0_AnalogParameter4 ;
 int rtl92e_set_bb_reg (struct net_device*,int ,int,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_phy_rf_write(struct net_device *dev,
     enum rf90_radio_path eRFPath, u32 Offset,
     u32 Data)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 u32 DataAndAddr = 0, NewOffset = 0;
 struct bb_reg_definition *pPhyReg = &priv->PHYRegDef[eRFPath];

 Offset &= 0x3f;
 if (priv->rf_chip == RF_8256) {
  rtl92e_set_bb_reg(dev, rFPGA0_AnalogParameter4, 0xf00, 0x0);

  if (Offset >= 31) {
   priv->RfReg0Value[eRFPath] |= 0x140;
   rtl92e_set_bb_reg(dev, pPhyReg->rf3wireOffset,
       bMaskDWord,
       (priv->RfReg0Value[eRFPath] << 16));
   NewOffset = Offset - 30;
  } else if (Offset >= 16) {
   priv->RfReg0Value[eRFPath] |= 0x100;
   priv->RfReg0Value[eRFPath] &= (~0x40);
   rtl92e_set_bb_reg(dev, pPhyReg->rf3wireOffset,
       bMaskDWord,
       (priv->RfReg0Value[eRFPath] << 16));
   NewOffset = Offset - 15;
  } else
   NewOffset = Offset;
 } else {
  RT_TRACE((COMP_PHY|COMP_ERR),
    "check RF type here, need to be 8256\n");
  NewOffset = Offset;
 }

 DataAndAddr = (NewOffset & 0x3f) | (Data << 16);

 rtl92e_set_bb_reg(dev, pPhyReg->rf3wireOffset, bMaskDWord, DataAndAddr);

 if (Offset == 0x0)
  priv->RfReg0Value[eRFPath] = Data;

 if (priv->rf_chip == RF_8256) {
  if (Offset != 0) {
   priv->RfReg0Value[eRFPath] &= 0xebf;
   rtl92e_set_bb_reg(dev, pPhyReg->rf3wireOffset,
       bMaskDWord,
       (priv->RfReg0Value[eRFPath] << 16));
  }
  rtl92e_set_bb_reg(dev, rFPGA0_AnalogParameter4, 0x300, 0x3);
 }
}
