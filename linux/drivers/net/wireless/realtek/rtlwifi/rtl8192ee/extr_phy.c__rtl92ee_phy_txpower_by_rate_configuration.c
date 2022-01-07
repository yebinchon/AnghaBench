
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int _rtl92ee_phy_store_txpower_by_rate_base (struct ieee80211_hw*) ;
 int phy_convert_txpwr_dbm_to_rel_val (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92ee_phy_txpower_by_rate_configuration(struct ieee80211_hw *hw)
{
 _rtl92ee_phy_store_txpower_by_rate_base(hw);
 phy_convert_txpwr_dbm_to_rel_val(hw);
}
