
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int hw; } ;
struct pci_dev {int dev; } ;


 int SET_IEEE80211_DEV (int ,int *) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int rtw_err (struct rtw_dev*,char*) ;

__attribute__((used)) static int rtw_pci_claim(struct rtw_dev *rtwdev, struct pci_dev *pdev)
{
 int ret;

 ret = pci_enable_device(pdev);
 if (ret) {
  rtw_err(rtwdev, "failed to enable pci device\n");
  return ret;
 }

 pci_set_master(pdev);
 pci_set_drvdata(pdev, rtwdev->hw);
 SET_IEEE80211_DEV(rtwdev->hw, &pdev->dev);

 return 0;
}
