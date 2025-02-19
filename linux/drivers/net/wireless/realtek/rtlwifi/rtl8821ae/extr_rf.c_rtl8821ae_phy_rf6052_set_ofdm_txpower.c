
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ieee80211_hw {int dummy; } ;


 int _rtl8821ae_write_ofdm_power_reg (struct ieee80211_hw*,int,scalar_t__*) ;
 int get_txpower_writeval_by_regulatory (struct ieee80211_hw*,int,int,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int rtl8821ae_dm_txpower_track_adjust (struct ieee80211_hw*,int,int*,scalar_t__*) ;
 int rtl8821ae_phy_get_power_base (struct ieee80211_hw*,int*,int*,int*,int,scalar_t__*,scalar_t__*) ;

void rtl8821ae_phy_rf6052_set_ofdm_txpower(struct ieee80211_hw *hw,
        u8 *ppowerlevel_ofdm,
        u8 *ppowerlevel_bw20,
        u8 *ppowerlevel_bw40,
        u8 channel)
{
 u32 writeval[2], powerbase0[2], powerbase1[2];
 u8 index;
 u8 direction;
 u32 pwrtrac_value;

 rtl8821ae_phy_get_power_base(hw, ppowerlevel_ofdm,
         ppowerlevel_bw20,
         ppowerlevel_bw40,
         channel,
         &powerbase0[0],
         &powerbase1[0]);

 rtl8821ae_dm_txpower_track_adjust(hw, 1, &direction, &pwrtrac_value);

 for (index = 0; index < 6; index++) {
  get_txpower_writeval_by_regulatory(hw, channel, index,
         &powerbase0[0],
         &powerbase1[0],
         &writeval[0]);
  if (direction == 1) {
   writeval[0] += pwrtrac_value;
   writeval[1] += pwrtrac_value;
  } else if (direction == 2) {
   writeval[0] -= pwrtrac_value;
   writeval[1] -= pwrtrac_value;
  }
  _rtl8821ae_write_ofdm_power_reg(hw, index, &writeval[0]);
 }
}
