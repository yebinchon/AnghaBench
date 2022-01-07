
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nci_dev {int dummy; } ;


 scalar_t__ NFC_SE_EMBEDDED ;
 int ST_NCI_APDU_READER_GATE ;
 int ST_NCI_EVT_SE_END_OF_APDU_TRANSFER ;
 int ST_NCI_SE_MODE_OFF ;
 int nci_hci_send_event (struct nci_dev*,int ,int ,int *,int ) ;
 int pr_debug (char*) ;
 int st_nci_control_se (struct nci_dev*,scalar_t__,int ) ;

int st_nci_disable_se(struct nci_dev *ndev, u32 se_idx)
{
 int r;

 pr_debug("st_nci_disable_se\n");






 r = st_nci_control_se(ndev, se_idx, ST_NCI_SE_MODE_OFF);
 if (r < 0) {

  if (se_idx == NFC_SE_EMBEDDED) {
   r = nci_hci_send_event(ndev, ST_NCI_APDU_READER_GATE,
     ST_NCI_EVT_SE_END_OF_APDU_TRANSFER,
     ((void*)0), 0);
  }
  return r;
 }

 return 0;
}
