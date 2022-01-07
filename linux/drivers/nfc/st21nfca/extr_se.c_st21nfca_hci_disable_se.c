
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfc_hci_dev {int dummy; } ;


 int ST21NFCA_SE_MODE_OFF ;
 int st21nfca_hci_control_se (struct nfc_hci_dev*,int ,int ) ;

int st21nfca_hci_disable_se(struct nfc_hci_dev *hdev, u32 se_idx)
{
 int r;






 r = st21nfca_hci_control_se(hdev, se_idx, ST21NFCA_SE_MODE_OFF);
 if (r < 0)
  return r;

 return 0;
}
