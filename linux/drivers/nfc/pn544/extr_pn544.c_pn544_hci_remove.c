
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn544_hci_info {int dummy; } ;
struct nfc_hci_dev {int dummy; } ;


 int kfree (struct pn544_hci_info*) ;
 int nfc_hci_free_device (struct nfc_hci_dev*) ;
 struct pn544_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int nfc_hci_unregister_device (struct nfc_hci_dev*) ;

void pn544_hci_remove(struct nfc_hci_dev *hdev)
{
 struct pn544_hci_info *info = nfc_hci_get_clientdata(hdev);

 nfc_hci_unregister_device(hdev);
 nfc_hci_free_device(hdev);
 kfree(info);
}
