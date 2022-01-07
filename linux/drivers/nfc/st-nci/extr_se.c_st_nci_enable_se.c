
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nci_dev {int nfc_dev; } ;


 int ST_NCI_APDU_READER_GATE ;
 int ST_NCI_ESE_HOST_ID ;
 int ST_NCI_EVT_SE_SOFT_RESET ;
 int ST_NCI_SE_MODE_ON ;
 int nci_hci_send_event (struct nci_dev*,int ,int ,int *,int ) ;
 int nfc_remove_se (int ,int ) ;
 int pr_debug (char*) ;
 int st_nci_control_se (struct nci_dev*,int ,int ) ;
 int st_nci_se_get_atr (struct nci_dev*) ;

int st_nci_enable_se(struct nci_dev *ndev, u32 se_idx)
{
 int r;

 pr_debug("st_nci_enable_se\n");






 r = st_nci_control_se(ndev, se_idx, ST_NCI_SE_MODE_ON);
 if (r == ST_NCI_ESE_HOST_ID) {
  st_nci_se_get_atr(ndev);
  r = nci_hci_send_event(ndev, ST_NCI_APDU_READER_GATE,
    ST_NCI_EVT_SE_SOFT_RESET, ((void*)0), 0);
 }

 if (r < 0) {




  nfc_remove_se(ndev->nfc_dev, se_idx);
  return r;
 }

 return 0;
}
