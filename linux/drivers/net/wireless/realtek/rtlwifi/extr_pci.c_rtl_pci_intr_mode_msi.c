
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rtl_priv {int dummy; } ;
struct rtl_pci_priv {int dummy; } ;
struct rtl_pci {int using_msi; TYPE_1__* pdev; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {int irq; } ;


 int COMP_INIT ;
 int COMP_INTR ;
 int DBG_DMESG ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 int RT_TRACE (struct rtl_priv*,int,int ,char*) ;
 int _rtl_pci_interrupt ;
 int pci_disable_msi (TYPE_1__*) ;
 int pci_enable_msi (TYPE_1__*) ;
 int request_irq (int ,int *,int ,int ,struct ieee80211_hw*) ;
 struct rtl_pci* rtl_pcidev (struct rtl_pci_priv*) ;
 struct rtl_pci_priv* rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static int rtl_pci_intr_mode_msi(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci_priv *pcipriv = rtl_pcipriv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(pcipriv);
 int ret;

 ret = pci_enable_msi(rtlpci->pdev);
 if (ret < 0)
  return ret;

 ret = request_irq(rtlpci->pdev->irq, &_rtl_pci_interrupt,
     IRQF_SHARED, KBUILD_MODNAME, hw);
 if (ret < 0) {
  pci_disable_msi(rtlpci->pdev);
  return ret;
 }

 rtlpci->using_msi = 1;

 RT_TRACE(rtlpriv, COMP_INIT | COMP_INTR, DBG_DMESG,
   "MSI Interrupt Mode!\n");
 return 0;
}
