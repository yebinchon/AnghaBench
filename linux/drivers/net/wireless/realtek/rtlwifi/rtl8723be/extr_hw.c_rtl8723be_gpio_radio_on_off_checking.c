
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtl_ps_ctl {int rfchange_inprogress; int hwradiooff; int reg_rfps_level; scalar_t__ swrf_processing; } ;
struct TYPE_4__ {int rf_ps_lock; } ;
struct TYPE_3__ {scalar_t__ being_init_adapter; } ;
struct rtl_phy {scalar_t__ polarity_ctl; } ;
struct rtl_priv {TYPE_2__ locks; TYPE_1__ rtlhal; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;


 int BIT (int) ;
 int COMP_RF ;
 int DBG_DMESG ;
 int ERFOFF ;
 int ERFON ;
 int REG_GPIO_IO_SEL_2 ;
 int REG_GPIO_PIN_CTRL_2 ;
 int RT_RF_OFF_LEVL_HALT_NIC ;
 int RT_SET_PS_LEVEL (struct rtl_ps_ctl*,int) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool rtl8723be_gpio_radio_on_off_checking(struct ieee80211_hw *hw, u8 *valid)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 enum rf_pwrstate e_rfpowerstate_toset;
 u8 u1tmp;
 bool b_actuallyset = 0;

 if (rtlpriv->rtlhal.being_init_adapter)
  return 0;

 if (ppsc->swrf_processing)
  return 0;

 spin_lock(&rtlpriv->locks.rf_ps_lock);
 if (ppsc->rfchange_inprogress) {
  spin_unlock(&rtlpriv->locks.rf_ps_lock);
  return 0;
 } else {
  ppsc->rfchange_inprogress = 1;
  spin_unlock(&rtlpriv->locks.rf_ps_lock);
 }

 rtl_write_byte(rtlpriv, REG_GPIO_IO_SEL_2,
         rtl_read_byte(rtlpriv, REG_GPIO_IO_SEL_2) & ~(BIT(1)));

 u1tmp = rtl_read_byte(rtlpriv, REG_GPIO_PIN_CTRL_2);

 if (rtlphy->polarity_ctl)
  e_rfpowerstate_toset = (u1tmp & BIT(1)) ? ERFOFF : ERFON;
 else
  e_rfpowerstate_toset = (u1tmp & BIT(1)) ? ERFON : ERFOFF;

 if ((ppsc->hwradiooff) && (e_rfpowerstate_toset == ERFON)) {
  RT_TRACE(rtlpriv, COMP_RF, DBG_DMESG,
    "GPIOChangeRF  - HW Radio ON, RF ON\n");

  e_rfpowerstate_toset = ERFON;
  ppsc->hwradiooff = 0;
  b_actuallyset = 1;
 } else if (!ppsc->hwradiooff && (e_rfpowerstate_toset == ERFOFF)) {
  RT_TRACE(rtlpriv, COMP_RF, DBG_DMESG,
    "GPIOChangeRF  - HW Radio OFF, RF OFF\n");

  e_rfpowerstate_toset = ERFOFF;
  ppsc->hwradiooff = 1;
  b_actuallyset = 1;
 }

 if (b_actuallyset) {
  spin_lock(&rtlpriv->locks.rf_ps_lock);
  ppsc->rfchange_inprogress = 0;
  spin_unlock(&rtlpriv->locks.rf_ps_lock);
 } else {
  if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_HALT_NIC)
   RT_SET_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_HALT_NIC);

  spin_lock(&rtlpriv->locks.rf_ps_lock);
  ppsc->rfchange_inprogress = 0;
  spin_unlock(&rtlpriv->locks.rf_ps_lock);
 }

 *valid = 1;
 return !ppsc->hwradiooff;

}
