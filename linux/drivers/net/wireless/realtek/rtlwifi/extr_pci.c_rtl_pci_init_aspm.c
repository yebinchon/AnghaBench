
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_ps_ctl {int reg_rfps_level; } ;
struct ieee80211_hw {int dummy; } ;


 int RT_RF_PS_LEVEL_ALWAYS_ASPM ;
 int RT_SET_PS_LEVEL (struct rtl_ps_ctl*,int) ;
 int _rtl_pci_update_default_setting (struct ieee80211_hw*) ;
 int rtl_pci_enable_aspm (struct ieee80211_hw*) ;
 int rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (int ) ;

__attribute__((used)) static void rtl_pci_init_aspm(struct ieee80211_hw *hw)
{
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));

 _rtl_pci_update_default_setting(hw);

 if (ppsc->reg_rfps_level & RT_RF_PS_LEVEL_ALWAYS_ASPM) {

  rtl_pci_enable_aspm(hw);
  RT_SET_PS_LEVEL(ppsc, RT_RF_PS_LEVEL_ALWAYS_ASPM);
 }
}
