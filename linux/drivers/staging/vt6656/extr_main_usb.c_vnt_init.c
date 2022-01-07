
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int mac_hw; int hw; int permanent_net_addr; } ;


 int EAGAIN ;
 int ENODEV ;
 int SET_IEEE80211_PERM_ADDR (int ,int ) ;
 scalar_t__ ieee80211_register_hw (int ) ;
 int vnt_init_bands (struct vnt_private*) ;
 int vnt_init_registers (struct vnt_private*) ;
 int vnt_radio_power_off (struct vnt_private*) ;

int vnt_init(struct vnt_private *priv)
{
 if (!(vnt_init_registers(priv)))
  return -EAGAIN;

 SET_IEEE80211_PERM_ADDR(priv->hw, priv->permanent_net_addr);

 vnt_init_bands(priv);

 if (ieee80211_register_hw(priv->hw))
  return -ENODEV;

 priv->mac_hw = 1;

 vnt_radio_power_off(priv);

 return 0;
}
