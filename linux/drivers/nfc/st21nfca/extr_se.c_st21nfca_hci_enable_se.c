
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfc_hci_dev {int ndev; } ;


 int ST21NFCA_APDU_READER_GATE ;
 int ST21NFCA_ESE_HOST_ID ;
 int ST21NFCA_EVT_SE_SOFT_RESET ;
 int ST21NFCA_SE_MODE_ON ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,int ,int *,int ) ;
 int nfc_remove_se (int ,int ) ;
 int st21nfca_hci_control_se (struct nfc_hci_dev*,int ,int ) ;
 int st21nfca_se_get_atr (struct nfc_hci_dev*) ;

int st21nfca_hci_enable_se(struct nfc_hci_dev *hdev, u32 se_idx)
{
 int r;






 r = st21nfca_hci_control_se(hdev, se_idx, ST21NFCA_SE_MODE_ON);
 if (r == ST21NFCA_ESE_HOST_ID) {
  st21nfca_se_get_atr(hdev);
  r = nfc_hci_send_event(hdev, ST21NFCA_APDU_READER_GATE,
    ST21NFCA_EVT_SE_SOFT_RESET, ((void*)0), 0);
  if (r < 0)
   return r;
 } else if (r < 0) {




  nfc_remove_se(hdev->ndev, se_idx);
  return r;
 }

 return 0;
}
