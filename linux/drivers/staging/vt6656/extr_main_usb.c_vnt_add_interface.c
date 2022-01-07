
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int op_mode; struct ieee80211_vif* vif; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;


 int EOPNOTSUPP ;
 int HOSTCR_ADHOC ;
 int HOSTCR_AP ;
 int LEDSTS_INTER ;
 int LEDSTS_STS ;
 int MAC_REG_HOSTCR ;
 int MAC_REG_RCR ;



 int RCR_UNICAST ;
 int vnt_mac_reg_bits_off (struct vnt_private*,int ,int ) ;
 int vnt_mac_reg_bits_on (struct vnt_private*,int ,int ) ;
 int vnt_mac_set_led (struct vnt_private*,int ,int ) ;
 int vnt_set_bss_mode (struct vnt_private*) ;

__attribute__((used)) static int vnt_add_interface(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct vnt_private *priv = hw->priv;

 priv->vif = vif;

 switch (vif->type) {
 case 128:
  break;
 case 130:
  vnt_mac_reg_bits_off(priv, MAC_REG_RCR, RCR_UNICAST);

  vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_ADHOC);

  break;
 case 129:
  vnt_mac_reg_bits_off(priv, MAC_REG_RCR, RCR_UNICAST);

  vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_AP);

  break;
 default:
  return -EOPNOTSUPP;
 }

 priv->op_mode = vif->type;

 vnt_set_bss_mode(priv);


 vnt_mac_set_led(priv, LEDSTS_STS, LEDSTS_INTER);

 return 0;
}
