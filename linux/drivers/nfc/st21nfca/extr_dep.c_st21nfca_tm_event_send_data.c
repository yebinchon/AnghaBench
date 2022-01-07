
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int* data; } ;
struct nfc_hci_dev {int dummy; } ;






 int st21nfca_tm_recv_atr_req (struct nfc_hci_dev*,struct sk_buff*) ;
 int st21nfca_tm_recv_dep_req (struct nfc_hci_dev*,struct sk_buff*) ;
 int st21nfca_tm_recv_psl_req (struct nfc_hci_dev*,struct sk_buff*) ;

__attribute__((used)) static int st21nfca_tm_event_send_data(struct nfc_hci_dev *hdev,
    struct sk_buff *skb)
{
 u8 cmd0, cmd1;
 int r;

 cmd0 = skb->data[1];
 switch (cmd0) {
 case 128:
  cmd1 = skb->data[2];
  switch (cmd1) {
  case 131:
   r = st21nfca_tm_recv_atr_req(hdev, skb);
   break;
  case 129:
   r = st21nfca_tm_recv_psl_req(hdev, skb);
   break;
  case 130:
   r = st21nfca_tm_recv_dep_req(hdev, skb);
   break;
  default:
   return 1;
  }
  break;
 default:
  return 1;
 }
 return r;
}
