
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_bss_conf {int beacon_int; } ;


 int MAC_REG_TCR ;
 int MAC_REG_TFTCTL ;
 int TCR_AUTOBCNTX ;
 int TFTCTL_TSFCNTREN ;
 int vnt_beacon_make (struct vnt_private*,struct ieee80211_vif*) ;
 int vnt_clear_current_tsf (struct vnt_private*) ;
 int vnt_mac_reg_bits_off (struct vnt_private*,int ,int ) ;
 int vnt_mac_reg_bits_on (struct vnt_private*,int ,int ) ;
 int vnt_mac_set_beacon_interval (struct vnt_private*,int ) ;
 int vnt_reset_next_tbtt (struct vnt_private*,int ) ;

int vnt_beacon_enable(struct vnt_private *priv, struct ieee80211_vif *vif,
        struct ieee80211_bss_conf *conf)
{
 vnt_mac_reg_bits_off(priv, MAC_REG_TCR, TCR_AUTOBCNTX);

 vnt_mac_reg_bits_off(priv, MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);

 vnt_mac_set_beacon_interval(priv, conf->beacon_int);

 vnt_clear_current_tsf(priv);

 vnt_mac_reg_bits_on(priv, MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);

 vnt_reset_next_tbtt(priv, conf->beacon_int);

 return vnt_beacon_make(priv, vif);
}
