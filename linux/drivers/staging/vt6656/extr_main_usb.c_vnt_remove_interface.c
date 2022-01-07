
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int op_mode; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;


 int HOSTCR_ADHOC ;
 int HOSTCR_AP ;
 int LEDSTS_SLOW ;
 int LEDSTS_STS ;
 int MAC_REG_HOSTCR ;
 int MAC_REG_TCR ;
 int MAC_REG_TFTCTL ;



 int NL80211_IFTYPE_UNSPECIFIED ;
 int TCR_AUTOBCNTX ;
 int TFTCTL_TSFCNTREN ;
 int vnt_mac_reg_bits_off (struct vnt_private*,int ,int ) ;
 int vnt_mac_set_led (struct vnt_private*,int ,int ) ;
 int vnt_radio_power_off (struct vnt_private*) ;

__attribute__((used)) static void vnt_remove_interface(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif)
{
 struct vnt_private *priv = hw->priv;

 switch (vif->type) {
 case 128:
  break;
 case 130:
  vnt_mac_reg_bits_off(priv, MAC_REG_TCR, TCR_AUTOBCNTX);
  vnt_mac_reg_bits_off(priv, MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);
  vnt_mac_reg_bits_off(priv, MAC_REG_HOSTCR, HOSTCR_ADHOC);
  break;
 case 129:
  vnt_mac_reg_bits_off(priv, MAC_REG_TCR, TCR_AUTOBCNTX);
  vnt_mac_reg_bits_off(priv, MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);
  vnt_mac_reg_bits_off(priv, MAC_REG_HOSTCR, HOSTCR_AP);
  break;
 default:
  break;
 }

 vnt_radio_power_off(priv);

 priv->op_mode = NL80211_IFTYPE_UNSPECIFIED;


 vnt_mac_set_led(priv, LEDSTS_STS, LEDSTS_SLOW);
}
