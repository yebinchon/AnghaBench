
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_usb {int* irq_mask; int disablehwsm; int acm_method; } ;
struct rtl_ps_ctl {int inactiveps; int leisure_ps; int fwctrl_lps; int reg_fwctrl_lps; int reg_max_lps_awakeintvl; int fwctrl_psmode; } ;
struct rtl_mac {int beacon_interval; int current_ampdu_density; int current_ampdu_factor; scalar_t__ max_mss_density; scalar_t__ min_space_cfg; } ;
struct rtl_hal {struct ieee80211_hw* hw; } ;
struct ieee80211_hw {int dummy; } ;


 int EACMWAY2_SW ;
 int FW_PS_DTIM_MODE ;
 struct rtl_hal* rtl_hal (int ) ;
 struct rtl_mac* rtl_mac (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (int ) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl_usb_init_sw(struct ieee80211_hw *hw)
{
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));

 rtlhal->hw = hw;
 ppsc->inactiveps = 0;
 ppsc->leisure_ps = 0;
 ppsc->fwctrl_lps = 0;
 ppsc->reg_fwctrl_lps = 3;
 ppsc->reg_max_lps_awakeintvl = 5;
 ppsc->fwctrl_psmode = FW_PS_DTIM_MODE;


 mac->beacon_interval = 100;


 mac->min_space_cfg = 0;
 mac->max_mss_density = 0;


 mac->current_ampdu_density = 7;
 mac->current_ampdu_factor = 3;


 rtlusb->acm_method = EACMWAY2_SW;



 rtlusb->irq_mask[0] = 0xFFFFFFFF;

 rtlusb->irq_mask[1] = 0xFFFFFFFF;
 rtlusb->disablehwsm = 1;
}
