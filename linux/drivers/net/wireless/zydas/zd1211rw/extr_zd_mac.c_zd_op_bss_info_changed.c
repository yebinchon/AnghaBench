
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int last_update; int interval; int period; } ;
struct zd_mac {scalar_t__ type; int associated; int lock; int short_preamble; int chip; TYPE_1__ beacon; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_bss_conf {int use_short_preamble; int bssid; int beacon_int; int dtim_period; scalar_t__ enable_beacon; } ;


 int BSS_CHANGED_BEACON ;
 int BSS_CHANGED_BEACON_ENABLED ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int dev_dbg_f (int ,char*,int) ;
 struct sk_buff* ieee80211_beacon_get (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int is_valid_ether_addr (int ) ;
 int jiffies ;
 int set_rts_cts (struct zd_mac*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int zd_chip_disable_hwint (int *) ;
 int zd_chip_enable_hwint (int *) ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;
 int zd_mac_config_beacon (struct ieee80211_hw*,struct sk_buff*,int) ;
 int zd_mac_dev (struct zd_mac*) ;
 int zd_set_beacon_interval (int *,int ,int ,scalar_t__) ;

__attribute__((used)) static void zd_op_bss_info_changed(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       struct ieee80211_bss_conf *bss_conf,
       u32 changes)
{
 struct zd_mac *mac = zd_hw_mac(hw);
 int associated;

 dev_dbg_f(zd_mac_dev(mac), "changes: %x\n", changes);

 if (mac->type == NL80211_IFTYPE_MESH_POINT ||
     mac->type == NL80211_IFTYPE_ADHOC ||
     mac->type == NL80211_IFTYPE_AP) {
  associated = 1;
  if (changes & BSS_CHANGED_BEACON) {
   struct sk_buff *beacon = ieee80211_beacon_get(hw, vif);

   if (beacon) {
    zd_chip_disable_hwint(&mac->chip);
    zd_mac_config_beacon(hw, beacon, 0);
    zd_chip_enable_hwint(&mac->chip);
   }
  }

  if (changes & BSS_CHANGED_BEACON_ENABLED) {
   u16 interval = 0;
   u8 period = 0;

   if (bss_conf->enable_beacon) {
    period = bss_conf->dtim_period;
    interval = bss_conf->beacon_int;
   }

   spin_lock_irq(&mac->lock);
   mac->beacon.period = period;
   mac->beacon.interval = interval;
   mac->beacon.last_update = jiffies;
   spin_unlock_irq(&mac->lock);

   zd_set_beacon_interval(&mac->chip, interval, period,
            mac->type);
  }
 } else
  associated = is_valid_ether_addr(bss_conf->bssid);

 spin_lock_irq(&mac->lock);
 mac->associated = associated;
 spin_unlock_irq(&mac->lock);



 if (changes & BSS_CHANGED_ERP_PREAMBLE) {
  spin_lock_irq(&mac->lock);
  mac->short_preamble = bss_conf->use_short_preamble;
  spin_unlock_irq(&mac->lock);

  set_rts_cts(mac, bss_conf->use_short_preamble);
 }
}
