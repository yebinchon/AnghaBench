
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl8180_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int PHY_PR; } ;


 int PI_DATA_REG ;
 int * REG_ADDR1 (int) ;
 int REG_ADDR2 (int) ;
 int REG_ADDR4 (int) ;
 int SI_DATA_REG ;
 int rtl818x_ioread32 (struct rtl8180_priv*,int ) ;
 int rtl818x_ioread8 (struct rtl8180_priv*,int *) ;
 int rtl818x_iowrite16 (struct rtl8180_priv*,int ,int) ;
 int rtl818x_iowrite32 (struct rtl8180_priv*,int ,int ) ;
 int rtl818x_iowrite8 (struct rtl8180_priv*,int *,int) ;

__attribute__((used)) static void rtl8187se_mac_config(struct ieee80211_hw *dev)
{
 struct rtl8180_priv *priv = dev->priv;
 u8 reg;

 rtl818x_iowrite32(priv, REG_ADDR4(0x1F0), 0);
 rtl818x_ioread32(priv, REG_ADDR4(0x1F0));
 rtl818x_iowrite32(priv, REG_ADDR4(0x1F4), 0);
 rtl818x_ioread32(priv, REG_ADDR4(0x1F4));
 rtl818x_iowrite8(priv, REG_ADDR1(0x1F8), 0);
 rtl818x_ioread8(priv, REG_ADDR1(0x1F8));

 reg = rtl818x_ioread8(priv, &priv->map->PHY_PR);
 rtl818x_iowrite8(priv, &priv->map->PHY_PR, reg | 0x04);

 rtl818x_iowrite16(priv, PI_DATA_REG, 0x1000);
 rtl818x_iowrite16(priv, SI_DATA_REG, 0x1000);

 rtl818x_iowrite16(priv, REG_ADDR2(0x370), 0x0560);
 rtl818x_iowrite16(priv, REG_ADDR2(0x372), 0x0560);
 rtl818x_iowrite16(priv, REG_ADDR2(0x374), 0x0DA4);
 rtl818x_iowrite16(priv, REG_ADDR2(0x376), 0x0DA4);
 rtl818x_iowrite16(priv, REG_ADDR2(0x378), 0x0560);
 rtl818x_iowrite16(priv, REG_ADDR2(0x37A), 0x0560);
 rtl818x_iowrite16(priv, REG_ADDR2(0x37C), 0x00EC);
 rtl818x_iowrite16(priv, REG_ADDR2(0x37E), 0x00EC);
 rtl818x_iowrite8(priv, REG_ADDR1(0x24E), 0x01);

 rtl818x_iowrite8(priv, REG_ADDR1(0x0A), 0x72);
}
