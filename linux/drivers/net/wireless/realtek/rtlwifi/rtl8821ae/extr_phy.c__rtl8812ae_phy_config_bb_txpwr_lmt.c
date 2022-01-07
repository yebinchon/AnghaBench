
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;


 int _rtl8812ae_phy_set_txpower_limit (struct ieee80211_hw*,int *,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static void _rtl8812ae_phy_config_bb_txpwr_lmt(struct ieee80211_hw *hw,
       u8 *regulation, u8 *band,
       u8 *bandwidth, u8 *rate_section,
       u8 *rf_path, u8 *channel,
       u8 *power_limit)
{
 _rtl8812ae_phy_set_txpower_limit(hw, regulation, band, bandwidth,
      rate_section, rf_path, channel,
      power_limit);
}
