
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn544_hci_info {int (* fw_download ) (int ,char const*,int ) ;int phy_id; } ;
struct nfc_hci_dev {int sw_romlib; } ;


 int ENOTSUPP ;
 struct pn544_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int stub1 (int ,char const*,int ) ;

__attribute__((used)) static int pn544_hci_fw_download(struct nfc_hci_dev *hdev,
     const char *firmware_name)
{
 struct pn544_hci_info *info = nfc_hci_get_clientdata(hdev);

 if (info->fw_download == ((void*)0))
  return -ENOTSUPP;

 return info->fw_download(info->phy_id, firmware_name, hdev->sw_romlib);
}
