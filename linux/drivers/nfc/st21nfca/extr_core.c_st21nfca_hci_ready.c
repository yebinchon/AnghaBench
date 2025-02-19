
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct st21nfca_hci_info {TYPE_1__* se_status; } ;
struct sk_buff {int* data; scalar_t__ len; } ;
struct nfc_hci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_ese_present; scalar_t__ is_uicc_present; } ;


 int DUMP_PREFIX_NONE ;
 int EINVAL ;
 scalar_t__ FULL_VERSION_LEN ;
 int KERN_DEBUG ;
 int NFC_HCI_ADMIN_GATE ;
 int NFC_HCI_ADMIN_WHITELIST ;
 int NFC_HCI_EVT_END_OPERATION ;
 int NFC_HCI_ID_MGMT_GATE ;
 int NFC_HCI_ID_MGMT_VERSION_SW ;
 int NFC_HCI_RF_READER_A_GATE ;
 int NFC_HCI_UICC_HOST_ID ;
 int ST21NFCA_DEVICE_MGNT_GATE ;
 int ST21NFCA_ESE_HOST_ID ;
 int ST21NFCA_NFC_MODE ;
 int kfree_skb (struct sk_buff*) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int nfc_hci_get_param (struct nfc_hci_dev*,int ,int ,struct sk_buff**) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,int ,int *,int ) ;
 int nfc_hci_set_param (struct nfc_hci_dev*,int ,int ,int*,int) ;
 int print_hex_dump (int ,char*,int ,int,int,int*,scalar_t__,int) ;

__attribute__((used)) static int st21nfca_hci_ready(struct nfc_hci_dev *hdev)
{
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);
 struct sk_buff *skb;

 u8 param;
 u8 white_list[2];
 int wl_size = 0;
 int r;

 if (info->se_status->is_uicc_present)
  white_list[wl_size++] = NFC_HCI_UICC_HOST_ID;
 if (info->se_status->is_ese_present)
  white_list[wl_size++] = ST21NFCA_ESE_HOST_ID;

 if (wl_size) {
  r = nfc_hci_set_param(hdev, NFC_HCI_ADMIN_GATE,
     NFC_HCI_ADMIN_WHITELIST,
     (u8 *) &white_list, wl_size);
  if (r < 0)
   return r;
 }


 r = nfc_hci_get_param(hdev, ST21NFCA_DEVICE_MGNT_GATE,
         ST21NFCA_NFC_MODE, &skb);
 if (r < 0)
  return r;

 param = skb->data[0];
 kfree_skb(skb);
 if (param == 0) {
  param = 1;

  r = nfc_hci_set_param(hdev, ST21NFCA_DEVICE_MGNT_GATE,
     ST21NFCA_NFC_MODE, &param, 1);
  if (r < 0)
   return r;
 }

 r = nfc_hci_send_event(hdev, NFC_HCI_RF_READER_A_GATE,
          NFC_HCI_EVT_END_OPERATION, ((void*)0), 0);
 if (r < 0)
  return r;

 r = nfc_hci_get_param(hdev, NFC_HCI_ID_MGMT_GATE,
         NFC_HCI_ID_MGMT_VERSION_SW, &skb);
 if (r < 0)
  return r;

 if (skb->len != FULL_VERSION_LEN) {
  kfree_skb(skb);
  return -EINVAL;
 }

 print_hex_dump(KERN_DEBUG, "FULL VERSION SOFTWARE INFO: ",
         DUMP_PREFIX_NONE, 16, 1,
         skb->data, FULL_VERSION_LEN, 0);

 kfree_skb(skb);

 return 0;
}
