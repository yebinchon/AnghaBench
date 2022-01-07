
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct r8192_priv {int chan; int card_8192_version; } ;
struct net_device {int dummy; } ;
typedef enum rf90_radio_path_e { ____Placeholder_rf90_radio_path_e } rf90_radio_path_e ;
typedef enum ht_channel_width { ____Placeholder_ht_channel_width } ht_channel_width ;


 int COMP_ERR ;


 scalar_t__ RF90_PATH_MAX ;
 int RT_TRACE (int ,char*,...) ;
 int VERSION_819XU_A ;
 int VERSION_819XU_B ;
 int bMask12Bits ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_phy_CheckIsLegalRFPath (struct net_device*,scalar_t__) ;
 int rtl8192_phy_SetRFReg (struct net_device*,int,int,int ,int) ;

void phy_set_rf8256_bandwidth(struct net_device *dev, enum ht_channel_width Bandwidth)
{
 u8 eRFPath;
 struct r8192_priv *priv = ieee80211_priv(dev);




 for (eRFPath = 0; eRFPath < RF90_PATH_MAX; eRFPath++) {
  if (!rtl8192_phy_CheckIsLegalRFPath(dev, eRFPath))
   continue;

  switch (Bandwidth) {
  case 129:
    if (priv->card_8192_version == VERSION_819XU_A ||
     priv->card_8192_version ==
     VERSION_819XU_B) {
     rtl8192_phy_SetRFReg(dev,
      (enum rf90_radio_path_e)eRFPath,
      0x0b, bMask12Bits, 0x100);
     rtl8192_phy_SetRFReg(dev,
      (enum rf90_radio_path_e)eRFPath,
      0x2c, bMask12Bits, 0x3d7);
     rtl8192_phy_SetRFReg(dev,
      (enum rf90_radio_path_e)eRFPath,
      0x0e, bMask12Bits, 0x021);
     rtl8192_phy_SetRFReg(dev,
      (enum rf90_radio_path_e)eRFPath,
      0x14, bMask12Bits, 0x5ab);
    } else {
     RT_TRACE(COMP_ERR, "phy_set_rf8256_bandwidth(): unknown hardware version\n");
     }
    break;
  case 128:
    if (priv->card_8192_version == VERSION_819XU_A || priv->card_8192_version == VERSION_819XU_B) {
     rtl8192_phy_SetRFReg(dev, (enum rf90_radio_path_e)eRFPath, 0x0b, bMask12Bits, 0x300);
     rtl8192_phy_SetRFReg(dev, (enum rf90_radio_path_e)eRFPath, 0x2c, bMask12Bits, 0x3df);
     rtl8192_phy_SetRFReg(dev, (enum rf90_radio_path_e)eRFPath, 0x0e, bMask12Bits, 0x0a1);

     if (priv->chan == 3 || priv->chan == 9)

      rtl8192_phy_SetRFReg(dev, (enum rf90_radio_path_e)eRFPath, 0x14, bMask12Bits, 0x59b);
     else
      rtl8192_phy_SetRFReg(dev, (enum rf90_radio_path_e)eRFPath, 0x14, bMask12Bits, 0x5ab);
    } else {
     RT_TRACE(COMP_ERR, "phy_set_rf8256_bandwidth(): unknown hardware version\n");
     }
    break;
  default:
    RT_TRACE(COMP_ERR, "phy_set_rf8256_bandwidth(): unknown Bandwidth: %#X\n", Bandwidth);
    break;
  }
 }
}
