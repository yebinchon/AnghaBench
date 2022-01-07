
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vnt_private {int preamble_type; int short_slot_time; scalar_t__ op_mode; int current_tsf; TYPE_3__* usb; int current_rate; int * bb_vga; int basic_rates; int current_aid; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct ieee80211_bss_conf {int beacon_int; int sync_tsf; TYPE_4__* beacon_rate; scalar_t__ assoc; int enable_beacon; TYPE_2__ chandef; scalar_t__ use_short_slot; scalar_t__ use_cts_prot; scalar_t__ use_short_preamble; int basic_rates; scalar_t__ bssid; int aid; } ;
struct TYPE_8__ {int hw_value; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_5__ {int hw_value; } ;


 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON_ENABLED ;
 int BSS_CHANGED_BEACON_INFO ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_ERP_CTS_PROT ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 int BSS_CHANGED_ERP_SLOT ;
 int BSS_CHANGED_TXPOWER ;
 int MAC_REG_TCR ;
 int MAC_REG_TFTCTL ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int TCR_AUTOBCNTX ;
 int TFTCTL_TSFCNTREN ;
 int dev_dbg (int *,char*,int ) ;
 int vnt_adjust_tsf (struct vnt_private*,int ,int ,int ) ;
 int vnt_beacon_enable (struct vnt_private*,struct ieee80211_vif*,struct ieee80211_bss_conf*) ;
 int vnt_clear_current_tsf (struct vnt_private*) ;
 int vnt_mac_disable_barker_preamble_mode (struct vnt_private*) ;
 int vnt_mac_disable_protect_mode (struct vnt_private*) ;
 int vnt_mac_enable_barker_preamble_mode (struct vnt_private*) ;
 int vnt_mac_enable_protect_mode (struct vnt_private*) ;
 int vnt_mac_reg_bits_off (struct vnt_private*,int ,int ) ;
 int vnt_mac_reg_bits_on (struct vnt_private*,int ,int ) ;
 int vnt_mac_set_beacon_interval (struct vnt_private*,int ) ;
 int vnt_mac_set_bssid_addr (struct vnt_private*,int *) ;
 int vnt_reset_next_tbtt (struct vnt_private*,int ) ;
 int vnt_rf_setpower (struct vnt_private*,int ,int ) ;
 int vnt_set_bss_mode (struct vnt_private*) ;
 int vnt_set_short_slot_time (struct vnt_private*) ;
 int vnt_set_vga_gain_offset (struct vnt_private*,int ) ;
 int vnt_update_ifs (struct vnt_private*) ;
 int vnt_update_pre_ed_threshold (struct vnt_private*,int) ;
 int vnt_update_top_rates (struct vnt_private*) ;

__attribute__((used)) static void vnt_bss_info_changed(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct ieee80211_bss_conf *conf, u32 changed)
{
 struct vnt_private *priv = hw->priv;

 priv->current_aid = conf->aid;

 if (changed & BSS_CHANGED_BSSID && conf->bssid)
  vnt_mac_set_bssid_addr(priv, (u8 *)conf->bssid);

 if (changed & BSS_CHANGED_BASIC_RATES) {
  priv->basic_rates = conf->basic_rates;

  vnt_update_top_rates(priv);
  vnt_set_bss_mode(priv);

  dev_dbg(&priv->usb->dev, "basic rates %x\n", conf->basic_rates);
 }

 if (changed & BSS_CHANGED_ERP_PREAMBLE) {
  if (conf->use_short_preamble) {
   vnt_mac_enable_barker_preamble_mode(priv);
   priv->preamble_type = 1;
  } else {
   vnt_mac_disable_barker_preamble_mode(priv);
   priv->preamble_type = 0;
  }
 }

 if (changed & BSS_CHANGED_ERP_CTS_PROT) {
  if (conf->use_cts_prot)
   vnt_mac_enable_protect_mode(priv);
  else
   vnt_mac_disable_protect_mode(priv);
 }

 if (changed & BSS_CHANGED_ERP_SLOT) {
  if (conf->use_short_slot)
   priv->short_slot_time = 1;
  else
   priv->short_slot_time = 0;

  vnt_set_short_slot_time(priv);
  vnt_update_ifs(priv);
  vnt_set_vga_gain_offset(priv, priv->bb_vga[0]);
  vnt_update_pre_ed_threshold(priv, 0);
 }

 if (changed & BSS_CHANGED_TXPOWER)
  vnt_rf_setpower(priv, priv->current_rate,
    conf->chandef.chan->hw_value);

 if (changed & BSS_CHANGED_BEACON_ENABLED) {
  dev_dbg(&priv->usb->dev,
   "Beacon enable %d\n", conf->enable_beacon);

  if (conf->enable_beacon) {
   vnt_beacon_enable(priv, vif, conf);

   vnt_mac_reg_bits_on(priv, MAC_REG_TCR, TCR_AUTOBCNTX);
  } else {
   vnt_mac_reg_bits_off(priv, MAC_REG_TCR, TCR_AUTOBCNTX);
  }
 }

 if (changed & (BSS_CHANGED_ASSOC | BSS_CHANGED_BEACON_INFO) &&
     priv->op_mode != NL80211_IFTYPE_AP) {
  if (conf->assoc && conf->beacon_rate) {
   vnt_mac_reg_bits_on(priv, MAC_REG_TFTCTL,
         TFTCTL_TSFCNTREN);

   vnt_adjust_tsf(priv, conf->beacon_rate->hw_value,
           conf->sync_tsf, priv->current_tsf);

   vnt_mac_set_beacon_interval(priv, conf->beacon_int);

   vnt_reset_next_tbtt(priv, conf->beacon_int);
  } else {
   vnt_clear_current_tsf(priv);

   vnt_mac_reg_bits_off(priv, MAC_REG_TFTCTL,
          TFTCTL_TSFCNTREN);
  }
 }
}
