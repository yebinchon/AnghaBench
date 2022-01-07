
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_target {int sens_res; int supported_protocols; } ;
struct nfc_hci_dev {int dummy; } ;


 int EPROTO ;
 int NFC_PROTO_FELICA_MASK ;
 int NFC_PROTO_JEWEL_MASK ;
 int NFC_PROTO_NFC_DEP_MASK ;




__attribute__((used)) static int pn544_hci_target_from_gate(struct nfc_hci_dev *hdev, u8 gate,
          struct nfc_target *target)
{
 switch (gate) {
 case 130:
  target->supported_protocols = NFC_PROTO_FELICA_MASK;
  break;
 case 129:
  target->supported_protocols = NFC_PROTO_JEWEL_MASK;
  target->sens_res = 0x0c00;
  break;
 case 128:
  target->supported_protocols = NFC_PROTO_NFC_DEP_MASK;
  break;
 default:
  return -EPROTO;
 }

 return 0;
}
