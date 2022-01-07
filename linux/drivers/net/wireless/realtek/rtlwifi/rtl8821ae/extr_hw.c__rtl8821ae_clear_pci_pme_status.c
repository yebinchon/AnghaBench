
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {int pdev; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_INIT ;
 int DBG_DMESG ;
 int DBG_LOUD ;
 int DBG_WARNING ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int pci_read_config_byte (int ,int,int*) ;
 int pci_read_config_word (int ,int,int*) ;
 int pci_write_config_byte (int ,int,int) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8821ae_clear_pci_pme_status(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 u16 cap_hdr;
 u8 cap_pointer;
 u8 cap_id = 0xff;
 u8 pmcs_reg;
 u8 cnt = 0;





 pci_read_config_byte(rtlpci->pdev, 0x34, &cap_pointer);
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "PCI configuration 0x34 = 0x%2x\n", cap_pointer);

 do {
  pci_read_config_word(rtlpci->pdev, cap_pointer, &cap_hdr);
  cap_id = cap_hdr & 0xFF;

  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "in pci configuration, cap_pointer%x = %x\n",
     cap_pointer, cap_id);

  if (cap_id == 0x01) {
   break;
  } else {

   cap_pointer = (cap_hdr >> 8) & 0xFF;

   if (cap_pointer == 0x00 || cap_pointer == 0xff) {
    cap_id = 0xff;
    break;
   }
  }
 } while (cnt++ < 200);

 if (cap_id == 0x01) {



  pci_read_config_byte(rtlpci->pdev, cap_pointer + 5, &pmcs_reg);

  if (pmcs_reg & BIT(7)) {

   pmcs_reg = pmcs_reg | BIT(7);

   pci_write_config_byte(rtlpci->pdev, cap_pointer + 5,
           pmcs_reg);

   pci_read_config_byte(rtlpci->pdev, cap_pointer + 5,
          &pmcs_reg);
   RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
     "Clear PME status 0x%2x to 0x%2x\n",
      cap_pointer + 5, pmcs_reg);
  } else {
   RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
     "PME status(0x%2x) = 0x%2x\n",
      cap_pointer + 5, pmcs_reg);
  }
 } else {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_WARNING,
    "Cannot find PME Capability\n");
 }
}
