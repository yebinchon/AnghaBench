
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtl_phy {int num_total_rfpath; } ;
struct rtl_efuse {int txpwr_fromeprom; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;
struct TYPE_3__ {struct rtl_phy phy; } ;


 int CCK ;
 int HT_MCS0_MCS7 ;
 int HT_MCS8_MCS15 ;
 int OFDM ;
 int RF90_PATH_A ;
 int phy_set_txpower_index_by_rate_section (struct ieee80211_hw*,int,int ,int ) ;
 struct rtl_efuse* rtl_efuse (TYPE_1__*) ;
 TYPE_1__* rtl_priv (struct ieee80211_hw*) ;

void rtl92ee_phy_set_txpower_level(struct ieee80211_hw *hw, u8 channel)
{
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct rtl_phy *rtlphy = &rtl_priv(hw)->phy;
 enum radio_path rfpath;

 if (!rtlefuse->txpwr_fromeprom)
  return;
 for (rfpath = RF90_PATH_A; rfpath < rtlphy->num_total_rfpath;
      rfpath++) {
  phy_set_txpower_index_by_rate_section(hw, rfpath,
            channel, CCK);
  phy_set_txpower_index_by_rate_section(hw, rfpath,
            channel, OFDM);
  phy_set_txpower_index_by_rate_section(hw, rfpath,
            channel,
            HT_MCS0_MCS7);

  if (rtlphy->num_total_rfpath >= 2)
   phy_set_txpower_index_by_rate_section(hw,
             rfpath, channel,
             HT_MCS8_MCS15);
 }
}
