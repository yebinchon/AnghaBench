
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_pci {int const_pci_aspm; int const_devicepci_aspm_setting; int const_hostpci_aspm_setting; int const_support_pciaspm; scalar_t__ const_hwsw_rfoff_d3; scalar_t__ const_amdpci_aspm; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mod_params; } ;
struct TYPE_3__ {int aspm_support; } ;


 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8821ae_init_aspm_vars(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));


 rtlpci->const_amdpci_aspm = 0;
 rtlpci->const_pci_aspm = 3;


 rtlpci->const_devicepci_aspm_setting = 0x03;


 rtlpci->const_hostpci_aspm_setting = 0x02;
 rtlpci->const_hwsw_rfoff_d3 = 0;
 rtlpci->const_support_pciaspm = rtlpriv->cfg->mod_params->aspm_support;
}
