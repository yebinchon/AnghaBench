
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st21nfca_hci_info {TYPE_1__* se_status; } ;
struct nfc_hci_dev {int ndev; int quirks; } ;
struct TYPE_2__ {scalar_t__ is_ese_present; scalar_t__ is_uicc_present; } ;


 int NFC_HCI_UICC_HOST_ID ;
 int NFC_SE_EMBEDDED ;
 int NFC_SE_UICC ;
 int ST21NFCA_ESE_HOST_ID ;
 int ST21NFCA_FACTORY_MODE ;
 int nfc_add_se (int ,int ,int ) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

int st21nfca_hci_discover_se(struct nfc_hci_dev *hdev)
{
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);
 int se_count = 0;

 if (test_bit(ST21NFCA_FACTORY_MODE, &hdev->quirks))
  return 0;

 if (info->se_status->is_uicc_present) {
  nfc_add_se(hdev->ndev, NFC_HCI_UICC_HOST_ID, NFC_SE_UICC);
  se_count++;
 }

 if (info->se_status->is_ese_present) {
  nfc_add_se(hdev->ndev, ST21NFCA_ESE_HOST_ID, NFC_SE_EMBEDDED);
  se_count++;
 }

 return !se_count;
}
