
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl_ps_ctl {int rfchange_inprogress; int hwradiooff; int reg_rfps_level; scalar_t__ swrf_processing; } ;
struct TYPE_2__ {int rf_ps_lock; } ;
struct rtl_priv {TYPE_1__ locks; } ;
struct rtl_pci {scalar_t__ being_init_adapter; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;


 int BIT (int) ;
 int COMP_RF ;
 int DBG_DMESG ;
 int ERFOFF ;
 int ERFON ;
 int REG_GPIO_IO_SEL ;
 int REG_MAC_PINMUX_CFG ;
 int RT_RF_OFF_LEVL_HALT_NIC ;
 int RT_SET_PS_LEVEL (struct rtl_ps_ctl*,int) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool rtl92ce_gpio_radio_on_off_checking(struct ieee80211_hw *hw, u8 *valid)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 enum rf_pwrstate e_rfpowerstate_toset;
 u8 u1tmp;
 bool actuallyset = 0;
 unsigned long flag;

 if (rtlpci->being_init_adapter)
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

 rtl_write_byte(rtlpriv, REG_MAC_PINMUX_CFG, rtl_read_byte(rtlpriv,
         REG_MAC_PINMUX_CFG)&~(BIT(3)));

 u1tmp = rtl_read_byte(rtlpriv, REG_GPIO_IO_SEL);
 e_rfpowerstate_toset = (u1tmp & BIT(3)) ? ERFON : ERFOFF;

 if ((ppsc->hwradiooff) && (e_rfpowerstate_toset == ERFON)) {
  RT_TRACE(rtlpriv, COMP_RF, DBG_DMESG,
    "GPIOChangeRF  - HW Radio ON, RF ON\n");

  e_rfpowerstate_toset = ERFON;
  ppsc->hwradiooff = 0;
  actuallyset = 1;
 } else if (!ppsc->hwradiooff && (e_rfpowerstate_toset == ERFOFF)) {
  RT_TRACE(rtlpriv, COMP_RF, DBG_DMESG,
    "GPIOChangeRF  - HW Radio OFF, RF OFF\n");

  e_rfpowerstate_toset = ERFOFF;
  ppsc->hwradiooff = 1;
  actuallyset = 1;
 }

 if (actuallyset) {
  spin_lock_irqsave(&rtlpriv->locks.rf_ps_lock, flag);
  ppsc->rfchange_inprogress = 0;
  spin_unlock_irqrestore(&rtlpriv->locks.rf_ps_lock, flag);
 } else {
  if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_HALT_NIC)
   RT_SET_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_HALT_NIC);

  spin_lock_irqsave(&rtlpriv->locks.rf_ps_lock, flag);
  ppsc->rfchange_inprogress = 0;
  spin_unlock_irqrestore(&rtlpriv->locks.rf_ps_lock, flag);
 }

 *valid = 1;
 return !ppsc->hwradiooff;

}
