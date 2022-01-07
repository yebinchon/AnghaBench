
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; int data; } ;
struct nfc_hci_dev {int dummy; } ;


 int EPROTO ;
 int NFC_NFCID1_MAXSIZE ;
 int ST21NFCA_RF_READER_14443_3_A_GATE ;
 int ST21NFCA_RF_READER_14443_3_A_UID ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int *,int ,int) ;
 int nfc_hci_get_param (struct nfc_hci_dev*,int ,int ,struct sk_buff**) ;

__attribute__((used)) static int st21nfca_get_iso14443_3_uid(struct nfc_hci_dev *hdev, u8 *uid,
           int *len)
{
 int r;
 struct sk_buff *uid_skb = ((void*)0);

 r = nfc_hci_get_param(hdev, ST21NFCA_RF_READER_14443_3_A_GATE,
         ST21NFCA_RF_READER_14443_3_A_UID, &uid_skb);
 if (r < 0)
  goto exit;

 if (uid_skb->len == 0 || uid_skb->len > NFC_NFCID1_MAXSIZE) {
  r = -EPROTO;
  goto exit;
 }

 memcpy(uid, uid_skb->data, uid_skb->len);
 *len = uid_skb->len;
exit:
 kfree_skb(uid_skb);
 return r;
}
