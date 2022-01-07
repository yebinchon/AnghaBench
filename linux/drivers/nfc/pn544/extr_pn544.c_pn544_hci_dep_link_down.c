
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_hci_dev {int dummy; } ;


 int NFC_HCI_EVT_END_OPERATION ;
 int PN544_RF_READER_NFCIP1_INITIATOR_GATE ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,int ,int *,int ) ;

__attribute__((used)) static int pn544_hci_dep_link_down(struct nfc_hci_dev *hdev)
{

 return nfc_hci_send_event(hdev, PN544_RF_READER_NFCIP1_INITIATOR_GATE,
     NFC_HCI_EVT_END_OPERATION, ((void*)0), 0);
}
