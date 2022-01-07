
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl_ps_ctl {int rfchange_inprogress; int hwradiooff; int reg_rfps_level; scalar_t__ swrf_processing; } ;
struct TYPE_2__ {int rf_ps_lock; } ;
struct rtl_priv {TYPE_1__ locks; } ;
struct rtl_pci {int up_first_time; scalar_t__ being_init_adapter; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;


 int COMP_RF ;
 int DBG_DMESG ;
 int ERFOFF ;
 int ERFON ;
 scalar_t__ RT_IN_PS_LEVEL (struct rtl_ps_ctl*,int) ;
 int RT_RF_OFF_LEVL_HALT_NIC ;
 int RT_SET_PS_LEVEL (struct rtl_ps_ctl*,int) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int _rtl92s_phy_set_rfhalt (struct ieee80211_hw*) ;
 int _rtl92se_power_domain_init (struct ieee80211_hw*) ;
 int _rtl92se_rf_onoff_detect (struct ieee80211_hw*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool rtl92se_gpio_radio_on_off_checking(struct ieee80211_hw *hw, u8 *valid)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 enum rf_pwrstate rfpwr_toset ;
 unsigned long flag = 0;
 bool actuallyset = 0;
 bool turnonbypowerdomain = 0;


 if ((rtlpci->up_first_time == 1) || (rtlpci->being_init_adapter))
  return 0;

 if (ppsc->swrf_processing)
  return 0;

 spin_lock_irqsave(&rtlpriv->locks.rf_ps_lock, flag);
 if (ppsc->rfchange_inprogress) {
  spin_unlock_irqrestore(&rtlpriv->locks.rf_ps_lock, flag);
  return 0;
 } else {
  ppsc->rfchange_inprogress = 1;
  spin_unlock_irqrestore(&rtlpriv->locks.rf_ps_lock, flag);
 }







 if (RT_IN_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_HALT_NIC)) {
  _rtl92se_power_domain_init(hw);
  turnonbypowerdomain = 1;
 }

 rfpwr_toset = _rtl92se_rf_onoff_detect(hw);

 if ((ppsc->hwradiooff) && (rfpwr_toset == ERFON)) {
  RT_TRACE(rtlpriv, COMP_RF, DBG_DMESG,
    "RFKILL-HW Radio ON, RF ON\n");

  rfpwr_toset = ERFON;
  ppsc->hwradiooff = 0;
  actuallyset = 1;
 } else if ((!ppsc->hwradiooff) && (rfpwr_toset == ERFOFF)) {
  RT_TRACE(rtlpriv, COMP_RF,
    DBG_DMESG, "RFKILL-HW Radio OFF, RF OFF\n");

  rfpwr_toset = ERFOFF;
  ppsc->hwradiooff = 1;
  actuallyset = 1;
 }

 if (actuallyset) {
  spin_lock_irqsave(&rtlpriv->locks.rf_ps_lock, flag);
  ppsc->rfchange_inprogress = 0;
  spin_unlock_irqrestore(&rtlpriv->locks.rf_ps_lock, flag);



 } else {





  if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_HALT_NIC &&
   turnonbypowerdomain) {
   _rtl92s_phy_set_rfhalt(hw);
   RT_SET_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_HALT_NIC);
  }

  spin_lock_irqsave(&rtlpriv->locks.rf_ps_lock, flag);
  ppsc->rfchange_inprogress = 0;
  spin_unlock_irqrestore(&rtlpriv->locks.rf_ps_lock, flag);
 }

 *valid = 1;
 return !ppsc->hwradiooff;

}
