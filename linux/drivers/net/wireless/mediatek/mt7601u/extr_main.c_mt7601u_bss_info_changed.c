
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;
struct ieee80211_bss_conf {int basic_rates; scalar_t__ use_short_slot; int use_short_preamble; int ht_operation_mode; int use_cts_prot; int beacon_int; int bssid; } ;


 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_ERP_CTS_PROT ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 int BSS_CHANGED_ERP_SLOT ;
 int BSS_CHANGED_HT ;
 int MT_BKOFF_SLOT_CFG ;
 int MT_BKOFF_SLOT_CFG_SLOTTIME ;
 int MT_HT_FBK_CFG0 ;
 int MT_HT_FBK_CFG1 ;
 int MT_LEGACY_BASIC_RATE ;
 int MT_LG_FBK_CFG0 ;
 int MT_LG_FBK_CFG1 ;
 int MT_MAC_BSSID_DW0 ;
 scalar_t__ is_zero_ether_addr (int ) ;
 int mt7601u_addr_wr (struct mt7601u_dev*,int ,int ) ;
 int mt7601u_mac_config_tsf (struct mt7601u_dev*,int,int ) ;
 int mt7601u_mac_set_protection (struct mt7601u_dev*,int ,int ) ;
 int mt7601u_mac_set_short_preamble (struct mt7601u_dev*,int ) ;
 int mt7601u_phy_con_cal_onoff (struct mt7601u_dev*,struct ieee80211_bss_conf*) ;
 int mt7601u_phy_recalibrate_after_assoc (struct mt7601u_dev*) ;
 int mt7601u_wr (struct mt7601u_dev*,int ,int) ;
 int mt76_rmw_field (struct mt7601u_dev*,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
mt7601u_bss_info_changed(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
    struct ieee80211_bss_conf *info, u32 changed)
{
 struct mt7601u_dev *dev = hw->priv;

 mutex_lock(&dev->mutex);

 if (changed & BSS_CHANGED_ASSOC)
  mt7601u_phy_con_cal_onoff(dev, info);

 if (changed & BSS_CHANGED_BSSID) {
  mt7601u_addr_wr(dev, MT_MAC_BSSID_DW0, info->bssid);





  if (is_zero_ether_addr(info->bssid))
   mt7601u_mac_config_tsf(dev, 0, 0);
 }

 if (changed & BSS_CHANGED_BASIC_RATES) {
  mt7601u_wr(dev, MT_LEGACY_BASIC_RATE, info->basic_rates);
  mt7601u_wr(dev, MT_HT_FBK_CFG0, 0x65432100);
  mt7601u_wr(dev, MT_HT_FBK_CFG1, 0xedcba980);
  mt7601u_wr(dev, MT_LG_FBK_CFG0, 0xedcba988);
  mt7601u_wr(dev, MT_LG_FBK_CFG1, 0x00002100);
 }

 if (changed & BSS_CHANGED_BEACON_INT)
  mt7601u_mac_config_tsf(dev, 1, info->beacon_int);

 if (changed & BSS_CHANGED_HT || changed & BSS_CHANGED_ERP_CTS_PROT)
  mt7601u_mac_set_protection(dev, info->use_cts_prot,
        info->ht_operation_mode);

 if (changed & BSS_CHANGED_ERP_PREAMBLE)
  mt7601u_mac_set_short_preamble(dev, info->use_short_preamble);

 if (changed & BSS_CHANGED_ERP_SLOT) {
  int slottime = info->use_short_slot ? 9 : 20;

  mt76_rmw_field(dev, MT_BKOFF_SLOT_CFG,
          MT_BKOFF_SLOT_CFG_SLOTTIME, slottime);
 }

 if (changed & BSS_CHANGED_ASSOC)
  mt7601u_phy_recalibrate_after_assoc(dev);

 mutex_unlock(&dev->mutex);
}
