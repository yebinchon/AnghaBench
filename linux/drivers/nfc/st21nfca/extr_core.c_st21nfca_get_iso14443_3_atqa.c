
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_hci_dev {int dummy; } ;
typedef int __be16 ;


 int EPROTO ;
 int ST21NFCA_RF_READER_14443_3_A_ATQA ;
 int ST21NFCA_RF_READER_14443_3_A_GATE ;
 int be16_to_cpu (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_hci_get_param (struct nfc_hci_dev*,int ,int ,struct sk_buff**) ;

__attribute__((used)) static int st21nfca_get_iso14443_3_atqa(struct nfc_hci_dev *hdev, u16 *atqa)
{
 int r;
 struct sk_buff *atqa_skb = ((void*)0);

 r = nfc_hci_get_param(hdev, ST21NFCA_RF_READER_14443_3_A_GATE,
         ST21NFCA_RF_READER_14443_3_A_ATQA, &atqa_skb);
 if (r < 0)
  goto exit;

 if (atqa_skb->len != 2) {
  r = -EPROTO;
  goto exit;
 }

 *atqa = be16_to_cpu(*(__be16 *) atqa_skb->data);

exit:
 kfree_skb(atqa_skb);
 return r;
}
