
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_sta_info {int list; scalar_t__ ratr_index; scalar_t__ wireless_mode; } ;
struct TYPE_2__ {int entry_list_lock; } ;
struct rtl_priv {TYPE_1__ locks; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; int addr; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_MAC80211 ;
 int DBG_DMESG ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 int list_del (int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int rtl_op_sta_remove(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif,
    struct ieee80211_sta *sta)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_sta_info *sta_entry;

 if (sta) {
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_DMESG,
    "Remove sta addr is %pM\n", sta->addr);
  sta_entry = (struct rtl_sta_info *)sta->drv_priv;
  sta_entry->wireless_mode = 0;
  sta_entry->ratr_index = 0;
  spin_lock_bh(&rtlpriv->locks.entry_list_lock);
  list_del(&sta_entry->list);
  spin_unlock_bh(&rtlpriv->locks.entry_list_lock);
 }
 return 0;
}
