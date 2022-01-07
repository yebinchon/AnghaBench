
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;


 int _rtl92de_read_macphymode_from_prom (struct ieee80211_hw*,int *) ;
 int rtl92d_phy_config_macphymode (struct ieee80211_hw*) ;
 int rtl92d_phy_config_macphymode_info (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92de_read_macphymode_and_bandtype(struct ieee80211_hw *hw,
        u8 *content)
{
 _rtl92de_read_macphymode_from_prom(hw, content);
 rtl92d_phy_config_macphymode(hw);
 rtl92d_phy_config_macphymode_info(hw);
}
