
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int _rtl8821ae_phy_convert_txpower_dbm_to_relative_value (struct ieee80211_hw*) ;
 int _rtl8821ae_phy_store_txpower_by_rate_base (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8821ae_phy_txpower_by_rate_configuration(struct ieee80211_hw *hw)
{
 _rtl8821ae_phy_store_txpower_by_rate_base(hw);
 _rtl8821ae_phy_convert_txpower_dbm_to_relative_value(hw);
}
