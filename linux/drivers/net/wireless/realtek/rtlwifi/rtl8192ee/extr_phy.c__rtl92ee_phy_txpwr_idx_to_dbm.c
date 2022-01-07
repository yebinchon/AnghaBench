
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;
typedef enum wireless_mode { ____Placeholder_wireless_mode } wireless_mode ;






__attribute__((used)) static long _rtl92ee_phy_txpwr_idx_to_dbm(struct ieee80211_hw *hw,
       enum wireless_mode wirelessmode,
       u8 txpwridx)
{
 long offset;
 long pwrout_dbm;

 switch (wirelessmode) {
 case 130:
  offset = -7;
  break;
 case 129:
 case 128:
  offset = -8;
  break;
 default:
  offset = -8;
  break;
 }
 pwrout_dbm = txpwridx / 2 + offset;
 return pwrout_dbm;
}
