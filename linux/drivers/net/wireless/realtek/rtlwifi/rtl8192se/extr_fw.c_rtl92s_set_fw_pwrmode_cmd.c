
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct rtl_ps_ctl {int reg_max_lps_awakeintvl; } ;
struct rtl_mac {TYPE_2__* vif; } ;
struct ieee80211_hw {int dummy; } ;
struct h2c_set_pwrmode_parm {scalar_t__ mode; int smart_ps; int bcn_pass_period; int bcn_pass_cnt; int awake_bcn_itvl; scalar_t__ app_itv; scalar_t__ bcn_to; scalar_t__ bcn_rx_en; scalar_t__ flag_dps_en; scalar_t__ flag_rf_low_snr_en; scalar_t__ flag_lpnav_en; scalar_t__ flag_low_traffic_en; } ;
struct TYPE_3__ {int beacon_int; int dtim_period; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;


 int FW_H2C_SETPWRMODE ;
 scalar_t__ FW_PS_MAX_MODE ;
 scalar_t__ FW_PS_MIN_MODE ;
 int SET_BITS_TO_LE_2BYTE (scalar_t__*,int ,int,int) ;
 int _rtl92s_firmware_set_h2c_cmd (struct ieee80211_hw*,int ,scalar_t__*) ;
 struct rtl_mac* rtl_mac (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (int ) ;

void rtl92s_set_fw_pwrmode_cmd(struct ieee80211_hw *hw, u8 mode)
{
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct h2c_set_pwrmode_parm pwrmode;
 u16 max_wakeup_period = 0;

 pwrmode.mode = mode;
 pwrmode.flag_low_traffic_en = 0;
 pwrmode.flag_lpnav_en = 0;
 pwrmode.flag_rf_low_snr_en = 0;
 pwrmode.flag_dps_en = 0;
 pwrmode.bcn_rx_en = 0;
 pwrmode.bcn_to = 0;
 SET_BITS_TO_LE_2BYTE((u8 *)(&pwrmode) + 8, 0, 16,
   mac->vif->bss_conf.beacon_int);
 pwrmode.app_itv = 0;
 pwrmode.awake_bcn_itvl = ppsc->reg_max_lps_awakeintvl;
 pwrmode.smart_ps = 1;
 pwrmode.bcn_pass_period = 10;


 if (pwrmode.mode == FW_PS_MIN_MODE)
  max_wakeup_period = mac->vif->bss_conf.beacon_int;
 else if (pwrmode.mode == FW_PS_MAX_MODE)
  max_wakeup_period = mac->vif->bss_conf.beacon_int *
   mac->vif->bss_conf.dtim_period;

 if (max_wakeup_period >= 500)
  pwrmode.bcn_pass_cnt = 1;
 else if ((max_wakeup_period >= 300) && (max_wakeup_period < 500))
  pwrmode.bcn_pass_cnt = 2;
 else if ((max_wakeup_period >= 200) && (max_wakeup_period < 300))
  pwrmode.bcn_pass_cnt = 3;
 else if ((max_wakeup_period >= 20) && (max_wakeup_period < 200))
  pwrmode.bcn_pass_cnt = 5;
 else
  pwrmode.bcn_pass_cnt = 1;

 _rtl92s_firmware_set_h2c_cmd(hw, FW_H2C_SETPWRMODE, (u8 *)&pwrmode);

}
