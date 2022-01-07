
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_pci {int pdev; } ;
struct ieee80211_hw {int dummy; } ;


 int pci_read_config_dword (int ,int,int*) ;
 int pci_write_config_dword (int ,int,int) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;

void rtl92se_resume(struct ieee80211_hw *hw)
{
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 u32 val;

 pci_read_config_dword(rtlpci->pdev, 0x40, &val);
 if ((val & 0x0000ff00) != 0)
  pci_write_config_dword(rtlpci->pdev, 0x40,
   val & 0xffff00ff);
}
