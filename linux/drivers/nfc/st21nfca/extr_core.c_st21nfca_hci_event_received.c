
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {int dummy; } ;
struct nfc_hci_dev {TYPE_1__* pipes; } ;
struct TYPE_2__ {size_t gate; size_t dest_host; } ;







 int pr_debug (char*,size_t,size_t) ;
 int st21nfca_admin_event_received (struct nfc_hci_dev*,size_t,struct sk_buff*) ;
 int st21nfca_apdu_reader_event_received (struct nfc_hci_dev*,size_t,struct sk_buff*) ;
 int st21nfca_connectivity_event_received (struct nfc_hci_dev*,size_t,size_t,struct sk_buff*) ;
 int st21nfca_dep_event_received (struct nfc_hci_dev*,size_t,struct sk_buff*) ;
 int st21nfca_hci_loopback_event_received (struct nfc_hci_dev*,size_t,struct sk_buff*) ;

__attribute__((used)) static int st21nfca_hci_event_received(struct nfc_hci_dev *hdev, u8 pipe,
           u8 event, struct sk_buff *skb)
{
 u8 gate = hdev->pipes[pipe].gate;
 u8 host = hdev->pipes[pipe].dest_host;

 pr_debug("hci event: %d gate: %x\n", event, gate);

 switch (gate) {
 case 132:
  return st21nfca_admin_event_received(hdev, event, skb);
 case 128:
  return st21nfca_dep_event_received(hdev, event, skb);
 case 129:
  return st21nfca_connectivity_event_received(hdev, host,
       event, skb);
 case 130:
  return st21nfca_apdu_reader_event_received(hdev, event, skb);
 case 131:
  return st21nfca_hci_loopback_event_received(hdev, event, skb);
 default:
  return 1;
 }
}
