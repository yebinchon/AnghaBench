
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_target {int supported_protocols; int nfcid1_len; int hci_reader_gate; int * nfcid1; } ;
struct nfc_hci_dev {int dummy; } ;


 int EOPNOTSUPP ;
 int NFC_HCI_RF_READER_A_GATE ;
 int NFC_PROTO_FELICA_MASK ;
 int NFC_PROTO_ISO14443_B_MASK ;
 int NFC_PROTO_ISO14443_MASK ;
 int NFC_PROTO_JEWEL_MASK ;
 int NFC_PROTO_MIFARE_MASK ;
 int NFC_PROTO_NFC_DEP_MASK ;
 int PN544_HCI_CMD_ATTREQUEST ;
 int PN544_RF_READER_CMD_ACTIVATE_NEXT ;
 int PN544_RF_READER_CMD_PRESENCE_CHECK ;
 int nfc_hci_send_cmd (struct nfc_hci_dev*,int ,int ,int *,int,int *) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int pn544_hci_check_presence(struct nfc_hci_dev *hdev,
       struct nfc_target *target)
{
 pr_debug("supported protocol %d\b", target->supported_protocols);
 if (target->supported_protocols & (NFC_PROTO_ISO14443_MASK |
     NFC_PROTO_ISO14443_B_MASK)) {
  return nfc_hci_send_cmd(hdev, target->hci_reader_gate,
     PN544_RF_READER_CMD_PRESENCE_CHECK,
     ((void*)0), 0, ((void*)0));
 } else if (target->supported_protocols & NFC_PROTO_MIFARE_MASK) {
  if (target->nfcid1_len != 4 && target->nfcid1_len != 7 &&
      target->nfcid1_len != 10)
   return -EOPNOTSUPP;

   return nfc_hci_send_cmd(hdev, NFC_HCI_RF_READER_A_GATE,
         PN544_RF_READER_CMD_ACTIVATE_NEXT,
         target->nfcid1, target->nfcid1_len, ((void*)0));
 } else if (target->supported_protocols & (NFC_PROTO_JEWEL_MASK |
      NFC_PROTO_FELICA_MASK)) {
  return -EOPNOTSUPP;
 } else if (target->supported_protocols & NFC_PROTO_NFC_DEP_MASK) {
  return nfc_hci_send_cmd(hdev, target->hci_reader_gate,
     PN544_HCI_CMD_ATTREQUEST,
     ((void*)0), 0, ((void*)0));
 }

 return 0;
}
