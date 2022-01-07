
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ieee80211_hw {int dummy; } ;
typedef enum wireless_mode { ____Placeholder_wireless_mode } wireless_mode ;


 scalar_t__ MAX_TXPWR_IDX_NMODE_92S ;




u8 _rtl92c_phy_dbm_to_txpwr_idx(struct ieee80211_hw *hw,
    enum wireless_mode wirelessmode,
    long power_indbm)
{
 u8 txpwridx;
 long offset;

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

 if ((power_indbm - offset) > 0)
  txpwridx = (u8)((power_indbm - offset) * 2);
 else
  txpwridx = 0;

 if (txpwridx > MAX_TXPWR_IDX_NMODE_92S)
  txpwridx = MAX_TXPWR_IDX_NMODE_92S;

 return txpwridx;
}
