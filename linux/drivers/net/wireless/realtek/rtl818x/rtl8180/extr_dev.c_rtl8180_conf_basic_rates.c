
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl8180_priv {int chip_family; TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int BRSR_8187SE; int RESP_RATE; int BRSR; } ;





 int ffs (int) ;
 int fls (int) ;
 int rtl818x_ioread16 (struct rtl8180_priv*,int *) ;
 int rtl818x_iowrite16 (struct rtl8180_priv*,int *,int) ;
 int rtl818x_iowrite8 (struct rtl8180_priv*,int *,int) ;

__attribute__((used)) static void rtl8180_conf_basic_rates(struct ieee80211_hw *dev,
       u32 basic_mask)
{
 struct rtl8180_priv *priv = dev->priv;
 u16 reg;
 u32 resp_mask;
 u8 basic_max;
 u8 resp_max, resp_min;

 resp_mask = basic_mask;






 if ((resp_mask & 0xf) == resp_mask)
  resp_mask |= 0x150;

 switch (priv->chip_family) {

 case 130:

  basic_max = fls(basic_mask) - 1;
  reg = rtl818x_ioread16(priv, &priv->map->BRSR);
  reg &= ~3;
  reg |= basic_max;
  rtl818x_iowrite16(priv, &priv->map->BRSR, reg);
  break;

 case 129:
  resp_max = fls(resp_mask) - 1;
  resp_min = ffs(resp_mask) - 1;

  rtl818x_iowrite16(priv, &priv->map->BRSR, basic_mask);
  rtl818x_iowrite8(priv, &priv->map->RESP_RATE, (resp_max << 4) |
    resp_min);
  break;

 case 128:



  rtl818x_iowrite16(priv, &priv->map->BRSR_8187SE, resp_mask);
  break;
 }
}
