
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtw_pci {int dummy; } ;
struct TYPE_2__ {int type; int * ops; } ;
struct rtw_dev {TYPE_1__ hci; struct rtw_chip_info* chip; int * dev; struct ieee80211_hw* hw; } ;
struct rtw_chip_info {int dummy; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int revision; int device; int vendor; int dev; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;


 int ENOMEM ;
 int RTW_DBG_PCI ;
 int RTW_HCI_TYPE_PCIE ;
 int dev_err (int *,char*) ;
 struct ieee80211_hw* ieee80211_alloc_hw (int,int *) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int rtw_chip_info_setup (struct rtw_dev*) ;
 int rtw_core_deinit (struct rtw_dev*) ;
 int rtw_core_init (struct rtw_dev*) ;
 int rtw_dbg (struct rtw_dev*,int ,char*,int ,int ,int ) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_ops ;
 int rtw_pci_claim (struct rtw_dev*,struct pci_dev*) ;
 int rtw_pci_declaim (struct rtw_dev*,struct pci_dev*) ;
 int rtw_pci_destroy (struct rtw_dev*,struct pci_dev*) ;
 int rtw_pci_ops ;
 int rtw_pci_request_irq (struct rtw_dev*,struct pci_dev*) ;
 int rtw_pci_setup_resource (struct rtw_dev*,struct pci_dev*) ;
 int rtw_register_hw (struct rtw_dev*,struct ieee80211_hw*) ;

__attribute__((used)) static int rtw_pci_probe(struct pci_dev *pdev,
    const struct pci_device_id *id)
{
 struct ieee80211_hw *hw;
 struct rtw_dev *rtwdev;
 int drv_data_size;
 int ret;

 drv_data_size = sizeof(struct rtw_dev) + sizeof(struct rtw_pci);
 hw = ieee80211_alloc_hw(drv_data_size, &rtw_ops);
 if (!hw) {
  dev_err(&pdev->dev, "failed to allocate hw\n");
  return -ENOMEM;
 }

 rtwdev = hw->priv;
 rtwdev->hw = hw;
 rtwdev->dev = &pdev->dev;
 rtwdev->chip = (struct rtw_chip_info *)id->driver_data;
 rtwdev->hci.ops = &rtw_pci_ops;
 rtwdev->hci.type = RTW_HCI_TYPE_PCIE;

 ret = rtw_core_init(rtwdev);
 if (ret)
  goto err_release_hw;

 rtw_dbg(rtwdev, RTW_DBG_PCI,
  "rtw88 pci probe: vendor=0x%4.04X device=0x%4.04X rev=%d\n",
  pdev->vendor, pdev->device, pdev->revision);

 ret = rtw_pci_claim(rtwdev, pdev);
 if (ret) {
  rtw_err(rtwdev, "failed to claim pci device\n");
  goto err_deinit_core;
 }

 ret = rtw_pci_setup_resource(rtwdev, pdev);
 if (ret) {
  rtw_err(rtwdev, "failed to setup pci resources\n");
  goto err_pci_declaim;
 }

 ret = rtw_chip_info_setup(rtwdev);
 if (ret) {
  rtw_err(rtwdev, "failed to setup chip information\n");
  goto err_destroy_pci;
 }

 ret = rtw_register_hw(rtwdev, hw);
 if (ret) {
  rtw_err(rtwdev, "failed to register hw\n");
  goto err_destroy_pci;
 }

 ret = rtw_pci_request_irq(rtwdev, pdev);
 if (ret) {
  ieee80211_unregister_hw(hw);
  goto err_destroy_pci;
 }

 return 0;

err_destroy_pci:
 rtw_pci_destroy(rtwdev, pdev);

err_pci_declaim:
 rtw_pci_declaim(rtwdev, pdev);

err_deinit_core:
 rtw_core_deinit(rtwdev);

err_release_hw:
 ieee80211_free_hw(hw);

 return ret;
}
