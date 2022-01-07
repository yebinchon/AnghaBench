
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_pci {int pdev; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ HARDWARE_TYPE_RTL8192SE ;
 int pci_write_config_byte (int ,int,int) ;
 struct rtl_hal* rtl_hal (int ) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 int rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static bool _rtl_pci_platform_switch_device_pci_aspm(
   struct ieee80211_hw *hw,
   u8 value)
{
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 if (rtlhal->hw_type != HARDWARE_TYPE_RTL8192SE)
  value |= 0x40;

 pci_write_config_byte(rtlpci->pdev, 0x80, value);

 return 0;
}
