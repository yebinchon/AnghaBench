
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl_ps_ctl {int smart_ps; int reg_max_lps_awakeintvl; } ;
struct TYPE_2__ {scalar_t__ p2p; } ;
struct rtl_priv {TYPE_1__ mac80211; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_CMD ;
 int COMP_POWER ;
 int DBG_DMESG ;
 int DBG_LOUD ;
 int H2C_SETPWRMODE ;
 int RT_PRINT_DATA (struct rtl_priv*,int ,int ,char*,int *,int) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 int SET_H2CCMD_PWRMODE_PARM_BCN_PASS_TIME (int *,int ) ;
 int SET_H2CCMD_PWRMODE_PARM_MODE (int *,int ) ;
 int SET_H2CCMD_PWRMODE_PARM_SMART_PS (int *,int) ;
 int rtl8723e_fill_h2c_cmd (struct ieee80211_hw*,int ,int,int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;

void rtl8723e_set_fw_pwrmode_cmd(struct ieee80211_hw *hw, u8 mode)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 u1_h2c_set_pwrmode[3] = { 0 };
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));

 RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD, "FW LPS mode = %d\n", mode);

 SET_H2CCMD_PWRMODE_PARM_MODE(u1_h2c_set_pwrmode, mode);
 SET_H2CCMD_PWRMODE_PARM_SMART_PS(u1_h2c_set_pwrmode,
  (rtlpriv->mac80211.p2p) ? ppsc->smart_ps : 1);
 SET_H2CCMD_PWRMODE_PARM_BCN_PASS_TIME(u1_h2c_set_pwrmode,
           ppsc->reg_max_lps_awakeintvl);

 RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_DMESG,
        "rtl8723e_set_fw_rsvdpagepkt(): u1_h2c_set_pwrmode\n",
        u1_h2c_set_pwrmode, 3);
 rtl8723e_fill_h2c_cmd(hw, H2C_SETPWRMODE, 3, u1_h2c_set_pwrmode);
}
