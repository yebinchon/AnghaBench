
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nfc_se {int type; } ;
struct nfc_hci_dev {int ndev; } ;


 int EINVAL ;


 int PN544_NFC_ESE_DEFAULT_MODE ;
 int PN544_NFC_WI_MGMT_GATE ;
 int PN544_SE_MODE_OFF ;
 int PN544_SWP_DEFAULT_MODE ;
 int PN544_SWP_MGMT_GATE ;
 struct nfc_se* nfc_find_se (int ,int ) ;
 int nfc_hci_set_param (struct nfc_hci_dev*,int ,int ,int *,int) ;

__attribute__((used)) static int pn544_hci_disable_se(struct nfc_hci_dev *hdev, u32 se_idx)
{
 struct nfc_se *se;
 u8 disable = PN544_SE_MODE_OFF;

 se = nfc_find_se(hdev->ndev, se_idx);

 switch (se->type) {
 case 128:
  return nfc_hci_set_param(hdev, PN544_SWP_MGMT_GATE,
         PN544_SWP_DEFAULT_MODE, &disable, 1);
 case 129:
  return nfc_hci_set_param(hdev, PN544_NFC_WI_MGMT_GATE,
         PN544_NFC_ESE_DEFAULT_MODE, &disable, 1);
 default:
  return -EINVAL;
 }
}
