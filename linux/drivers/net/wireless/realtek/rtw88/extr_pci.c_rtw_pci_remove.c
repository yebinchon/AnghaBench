
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_pci {int dummy; } ;
struct rtw_dev {scalar_t__ priv; } ;
struct pci_dev {int dummy; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;


 int ieee80211_free_hw (struct ieee80211_hw*) ;
 struct ieee80211_hw* pci_get_drvdata (struct pci_dev*) ;
 int rtw_core_deinit (struct rtw_dev*) ;
 int rtw_pci_declaim (struct rtw_dev*,struct pci_dev*) ;
 int rtw_pci_destroy (struct rtw_dev*,struct pci_dev*) ;
 int rtw_pci_disable_interrupt (struct rtw_dev*,struct rtw_pci*) ;
 int rtw_pci_free_irq (struct rtw_dev*,struct pci_dev*) ;
 int rtw_unregister_hw (struct rtw_dev*,struct ieee80211_hw*) ;

__attribute__((used)) static void rtw_pci_remove(struct pci_dev *pdev)
{
 struct ieee80211_hw *hw = pci_get_drvdata(pdev);
 struct rtw_dev *rtwdev;
 struct rtw_pci *rtwpci;

 if (!hw)
  return;

 rtwdev = hw->priv;
 rtwpci = (struct rtw_pci *)rtwdev->priv;

 rtw_unregister_hw(rtwdev, hw);
 rtw_pci_disable_interrupt(rtwdev, rtwpci);
 rtw_pci_destroy(rtwdev, pdev);
 rtw_pci_declaim(rtwdev, pdev);
 rtw_pci_free_irq(rtwdev, pdev);
 rtw_core_deinit(rtwdev);
 ieee80211_free_hw(hw);
}
