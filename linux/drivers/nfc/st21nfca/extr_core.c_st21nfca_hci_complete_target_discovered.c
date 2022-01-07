
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__ len; int data; } ;
struct nfc_target {int* sensf_res; scalar_t__ sensf_res_len; scalar_t__ hci_reader_gate; void* supported_protocols; } ;
struct nfc_hci_dev {int dummy; } ;


 int EPROTO ;
 scalar_t__ NFC_NFCID1_MAXSIZE ;
 void* NFC_PROTO_FELICA_MASK ;
 void* NFC_PROTO_NFC_DEP_MASK ;
 scalar_t__ NFC_SENSF_RES_MAXSIZE ;
 scalar_t__ ST21NFCA_RF_READER_F_GATE ;
 int ST21NFCA_RF_READER_F_NFCID1 ;
 int ST21NFCA_RF_READER_F_NFCID2 ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int*,int ,scalar_t__) ;
 int nfc_hci_get_param (struct nfc_hci_dev*,scalar_t__,int ,struct sk_buff**) ;

__attribute__((used)) static int st21nfca_hci_complete_target_discovered(struct nfc_hci_dev *hdev,
      u8 gate,
      struct nfc_target *target)
{
 int r;
 struct sk_buff *nfcid_skb = ((void*)0);

 if (gate == ST21NFCA_RF_READER_F_GATE) {
  r = nfc_hci_get_param(hdev, ST21NFCA_RF_READER_F_GATE,
    ST21NFCA_RF_READER_F_NFCID2, &nfcid_skb);
  if (r < 0)
   goto exit;

  if (nfcid_skb->len > NFC_SENSF_RES_MAXSIZE) {
   r = -EPROTO;
   goto exit;
  }
  if (nfcid_skb->len > 0) {

   memcpy(target->sensf_res, nfcid_skb->data,
    nfcid_skb->len);
   target->sensf_res_len = nfcid_skb->len;

   if (target->sensf_res[0] == 0x01 &&
       target->sensf_res[1] == 0xfe)
    target->supported_protocols =
       NFC_PROTO_NFC_DEP_MASK;
   else
    target->supported_protocols =
       NFC_PROTO_FELICA_MASK;
  } else {
   kfree_skb(nfcid_skb);
   nfcid_skb = ((void*)0);

   r = nfc_hci_get_param(hdev, ST21NFCA_RF_READER_F_GATE,
     ST21NFCA_RF_READER_F_NFCID1,
     &nfcid_skb);
   if (r < 0)
    goto exit;

   if (nfcid_skb->len > NFC_NFCID1_MAXSIZE) {
    r = -EPROTO;
    goto exit;
   }
   memcpy(target->sensf_res, nfcid_skb->data,
    nfcid_skb->len);
   target->sensf_res_len = nfcid_skb->len;
   target->supported_protocols = NFC_PROTO_NFC_DEP_MASK;
  }
  target->hci_reader_gate = ST21NFCA_RF_READER_F_GATE;
 }
 r = 1;
exit:
 kfree_skb(nfcid_skb);
 return r;
}
