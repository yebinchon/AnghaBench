
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; int * data; } ;
struct nfc_hci_dev {int dummy; } ;


 int EPROTO ;
 int ST21NFCA_RF_READER_14443_3_A_GATE ;
 int ST21NFCA_RF_READER_14443_3_A_SAK ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_hci_get_param (struct nfc_hci_dev*,int ,int ,struct sk_buff**) ;

__attribute__((used)) static int st21nfca_get_iso14443_3_sak(struct nfc_hci_dev *hdev, u8 *sak)
{
 int r;
 struct sk_buff *sak_skb = ((void*)0);

 r = nfc_hci_get_param(hdev, ST21NFCA_RF_READER_14443_3_A_GATE,
         ST21NFCA_RF_READER_14443_3_A_SAK, &sak_skb);
 if (r < 0)
  goto exit;

 if (sak_skb->len != 1) {
  r = -EPROTO;
  goto exit;
 }

 *sak = sak_skb->data[0];

exit:
 kfree_skb(sak_skb);
 return r;
}
