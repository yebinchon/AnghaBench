
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl8180_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int TX_ANTENNA; } ;


 int rtl818x_iowrite8 (struct rtl8180_priv*,int *,int) ;
 int rtl8225_write_phy_cck (struct ieee80211_hw*,int,int) ;
 int rtl8225_write_phy_ofdm (struct ieee80211_hw*,int,int) ;

__attribute__((used)) static void rtl8187se_set_antenna_config(struct ieee80211_hw *dev, u8 def_ant,
      bool diversity)
{
 struct rtl8180_priv *priv = dev->priv;

 rtl8225_write_phy_cck(dev, 0x0C, 0x09);
 if (diversity) {
  if (def_ant == 1) {
   rtl818x_iowrite8(priv, &priv->map->TX_ANTENNA, 0x00);
   rtl8225_write_phy_cck(dev, 0x11, 0xBB);
   rtl8225_write_phy_cck(dev, 0x01, 0xC7);
   rtl8225_write_phy_ofdm(dev, 0x0D, 0x54);
   rtl8225_write_phy_ofdm(dev, 0x18, 0xB2);
  } else {
   rtl818x_iowrite8(priv, &priv->map->TX_ANTENNA, 0x03);
   rtl8225_write_phy_cck(dev, 0x11, 0x9B);
   rtl8225_write_phy_cck(dev, 0x01, 0xC7);
   rtl8225_write_phy_ofdm(dev, 0x0D, 0x5C);
   rtl8225_write_phy_ofdm(dev, 0x18, 0xB2);
  }
 } else {
  if (def_ant == 1) {
   rtl818x_iowrite8(priv, &priv->map->TX_ANTENNA, 0x00);
   rtl8225_write_phy_cck(dev, 0x11, 0xBB);
   rtl8225_write_phy_cck(dev, 0x01, 0x47);
   rtl8225_write_phy_ofdm(dev, 0x0D, 0x54);
   rtl8225_write_phy_ofdm(dev, 0x18, 0x32);
  } else {
   rtl818x_iowrite8(priv, &priv->map->TX_ANTENNA, 0x03);
   rtl8225_write_phy_cck(dev, 0x11, 0x9B);
   rtl8225_write_phy_cck(dev, 0x01, 0x47);
   rtl8225_write_phy_ofdm(dev, 0x0D, 0x5C);
   rtl8225_write_phy_ofdm(dev, 0x18, 0x32);
  }
 }

}
