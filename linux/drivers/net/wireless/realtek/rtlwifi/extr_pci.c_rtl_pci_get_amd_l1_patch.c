
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_pci {int pdev; } ;
struct ieee80211_hw {int dummy; } ;


 unsigned int BIT (int) ;
 int pci_read_config_byte (int ,int,int*) ;
 int pci_read_config_dword (int ,int,unsigned int*) ;
 int pci_write_config_byte (int ,int,int) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;

__attribute__((used)) static bool rtl_pci_get_amd_l1_patch(struct ieee80211_hw *hw)
{
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));

 bool status = 0;
 u8 offset_e0;
 unsigned int offset_e4;

 pci_write_config_byte(rtlpci->pdev, 0xe0, 0xa0);

 pci_read_config_byte(rtlpci->pdev, 0xe0, &offset_e0);

 if (offset_e0 == 0xA0) {
  pci_read_config_dword(rtlpci->pdev, 0xe4, &offset_e4);
  if (offset_e4 & BIT(23))
   status = 1;
 }

 return status;
}
