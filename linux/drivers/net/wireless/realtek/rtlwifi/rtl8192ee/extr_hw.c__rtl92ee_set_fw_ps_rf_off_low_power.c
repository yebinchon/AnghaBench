
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;


 int FW_PS_STATE_RF_OFF_LOW_PWR ;
 int _rtl92ee_set_fw_clock_off (struct ieee80211_hw*,int ) ;

__attribute__((used)) static void _rtl92ee_set_fw_ps_rf_off_low_power(struct ieee80211_hw *hw)
{
 u8 rpwm_val = 0;

 rpwm_val |= FW_PS_STATE_RF_OFF_LOW_PWR;
 _rtl92ee_set_fw_clock_off(hw, rpwm_val);
}
