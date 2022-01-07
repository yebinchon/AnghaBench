
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_target {int hci_reader_gate; } ;
struct nfc_hci_dev {int dummy; } ;


 int EOPNOTSUPP ;



 int ST21NFCA_RF_READER_CMD_PRESENCE_CHECK ;
 int ST21NFCA_WR_XCHG_DATA ;
 int nfc_hci_send_cmd (struct nfc_hci_dev*,int,int ,int*,int,int *) ;

__attribute__((used)) static int st21nfca_hci_check_presence(struct nfc_hci_dev *hdev,
           struct nfc_target *target)
{
 u8 fwi = 0x11;

 switch (target->hci_reader_gate) {
 case 130:
 case 129:







  return nfc_hci_send_cmd(hdev, target->hci_reader_gate,
     ST21NFCA_WR_XCHG_DATA, &fwi, 1, ((void*)0));
 case 128:
  return nfc_hci_send_cmd(hdev, target->hci_reader_gate,
     ST21NFCA_RF_READER_CMD_PRESENCE_CHECK,
     ((void*)0), 0, ((void*)0));
 default:
  return -EOPNOTSUPP;
 }
}
