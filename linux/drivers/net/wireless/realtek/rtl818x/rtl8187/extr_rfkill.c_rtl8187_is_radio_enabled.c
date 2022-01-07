
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl8187_priv {int rfkill_mask; TYPE_1__* map; } ;
struct TYPE_2__ {int GPIO1; int GPIO0; } ;


 int rtl818x_ioread8 (struct rtl8187_priv*,int *) ;
 int rtl818x_iowrite8 (struct rtl8187_priv*,int *,int) ;

__attribute__((used)) static bool rtl8187_is_radio_enabled(struct rtl8187_priv *priv)
{
 u8 gpio;

 gpio = rtl818x_ioread8(priv, &priv->map->GPIO0);
 rtl818x_iowrite8(priv, &priv->map->GPIO0, gpio & ~priv->rfkill_mask);
 gpio = rtl818x_ioread8(priv, &priv->map->GPIO1);

 return gpio & priv->rfkill_mask;
}
