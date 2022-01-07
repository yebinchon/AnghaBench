
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8180_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int CONFIG2; } ;


 int RTL818X_CONFIG2_ANTENNA_DIV ;
 int max2820_rf_set_channel (struct ieee80211_hw*,int *) ;
 int max2820_write_phy_antenna (struct ieee80211_hw*,int) ;
 int rtl8180_write_phy (struct ieee80211_hw*,int,int) ;
 int rtl818x_ioread8 (struct rtl8180_priv*,int *) ;
 int write_max2820 (struct ieee80211_hw*,int,int) ;

__attribute__((used)) static void max2820_rf_init(struct ieee80211_hw *dev)
{
 struct rtl8180_priv *priv = dev->priv;


 write_max2820(dev, 0, 0x007);
 write_max2820(dev, 1, 0x01e);
 write_max2820(dev, 2, 0x001);

 max2820_rf_set_channel(dev, ((void*)0));

 write_max2820(dev, 4, 0x313);





 write_max2820(dev, 5, 0x00f);


 rtl8180_write_phy(dev, 0, 0x88);
 rtl8180_write_phy(dev, 3, 0x08);
 rtl8180_write_phy(dev, 4, 0xf8);
 rtl8180_write_phy(dev, 5, 0x90);
 rtl8180_write_phy(dev, 6, 0x1a);
 rtl8180_write_phy(dev, 7, 0x64);

 max2820_write_phy_antenna(dev, 1);

 rtl8180_write_phy(dev, 0x11, 0x88);

 if (rtl818x_ioread8(priv, &priv->map->CONFIG2) &
     RTL818X_CONFIG2_ANTENNA_DIV)
  rtl8180_write_phy(dev, 0x12, 0xc7);
 else
  rtl8180_write_phy(dev, 0x12, 0x47);

 rtl8180_write_phy(dev, 0x13, 0x9b);

 rtl8180_write_phy(dev, 0x19, 0x0);
 rtl8180_write_phy(dev, 0x1a, 0x9f);

 max2820_rf_set_channel(dev, ((void*)0));
}
