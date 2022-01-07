
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {int len; int* data; } ;
struct nfc_target {int supported_protocols; int nfcid1_len; int* nfcid1; int sens_res; scalar_t__ hci_reader_gate; } ;
struct nfc_hci_dev {int dummy; } ;


 int EPROTO ;
 scalar_t__ NFC_HCI_RF_READER_A_GATE ;
 int NFC_PROTO_FELICA_MASK ;
 int NFC_PROTO_ISO14443_MASK ;
 int NFC_PROTO_MIFARE_MASK ;
 int NFC_PROTO_NFC_DEP_MASK ;
 int PN544_FELICA_ID ;
 int PN544_HCI_CMD_CONTINUE_ACTIVATION ;
 int PN544_RF_READER_A_CMD_CONTINUE_ACTIVATION ;
 int PN544_RF_READER_CMD_ACTIVATE_NEXT ;
 scalar_t__ PN544_RF_READER_F_GATE ;
 scalar_t__ PN544_RF_READER_NFCIP1_INITIATOR_GATE ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_hci_get_param (struct nfc_hci_dev*,scalar_t__,int ,struct sk_buff**) ;
 int nfc_hci_send_cmd (struct nfc_hci_dev*,scalar_t__,int ,int*,int,int *) ;

__attribute__((used)) static int pn544_hci_complete_target_discovered(struct nfc_hci_dev *hdev,
      u8 gate,
      struct nfc_target *target)
{
 struct sk_buff *uid_skb;
 int r = 0;

 if (gate == PN544_RF_READER_NFCIP1_INITIATOR_GATE)
  return r;

 if (target->supported_protocols & NFC_PROTO_NFC_DEP_MASK) {
  r = nfc_hci_send_cmd(hdev,
   PN544_RF_READER_NFCIP1_INITIATOR_GATE,
   PN544_HCI_CMD_CONTINUE_ACTIVATION, ((void*)0), 0, ((void*)0));
  if (r < 0)
   return r;

  target->hci_reader_gate = PN544_RF_READER_NFCIP1_INITIATOR_GATE;
 } else if (target->supported_protocols & NFC_PROTO_MIFARE_MASK) {
  if (target->nfcid1_len != 4 && target->nfcid1_len != 7 &&
      target->nfcid1_len != 10)
   return -EPROTO;

  r = nfc_hci_send_cmd(hdev, NFC_HCI_RF_READER_A_GATE,
         PN544_RF_READER_CMD_ACTIVATE_NEXT,
         target->nfcid1, target->nfcid1_len, ((void*)0));
 } else if (target->supported_protocols & NFC_PROTO_FELICA_MASK) {
  r = nfc_hci_get_param(hdev, PN544_RF_READER_F_GATE,
          PN544_FELICA_ID, &uid_skb);
  if (r < 0)
   return r;

  if (uid_skb->len != 8) {
   kfree_skb(uid_skb);
   return -EPROTO;
  }


  if ((uid_skb->data[0] == 0x01) && (uid_skb->data[1] == 0xfe)) {
   kfree_skb(uid_skb);
   r = nfc_hci_send_cmd(hdev,
     PN544_RF_READER_NFCIP1_INITIATOR_GATE,
     PN544_HCI_CMD_CONTINUE_ACTIVATION,
     ((void*)0), 0, ((void*)0));
   if (r < 0)
    return r;

   target->supported_protocols = NFC_PROTO_NFC_DEP_MASK;
   target->hci_reader_gate =
    PN544_RF_READER_NFCIP1_INITIATOR_GATE;
  } else {
   r = nfc_hci_send_cmd(hdev, PN544_RF_READER_F_GATE,
          PN544_RF_READER_CMD_ACTIVATE_NEXT,
          uid_skb->data, uid_skb->len, ((void*)0));
   kfree_skb(uid_skb);
  }
 } else if (target->supported_protocols & NFC_PROTO_ISO14443_MASK) {




  if (target->sens_res == 0x4403)
   r = nfc_hci_send_cmd(hdev, NFC_HCI_RF_READER_A_GATE,
         PN544_RF_READER_A_CMD_CONTINUE_ACTIVATION,
         ((void*)0), 0, ((void*)0));
 }

 return r;
}
