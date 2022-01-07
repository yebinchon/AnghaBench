
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;


 int MAC_REG_TFTCTL ;
 int TFTCTL_TSFCNTREN ;
 int vnt_clear_current_tsf (struct vnt_private*) ;
 int vnt_mac_reg_bits_off (struct vnt_private*,int ,int ) ;

__attribute__((used)) static void vnt_reset_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct vnt_private *priv = hw->priv;

 vnt_mac_reg_bits_off(priv, MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);

 vnt_clear_current_tsf(priv);
}
