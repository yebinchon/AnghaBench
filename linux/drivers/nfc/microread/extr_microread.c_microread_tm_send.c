
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct nfc_hci_dev {int dummy; } ;


 int MICROREAD_EVT_MCARD_EXCHANGE ;
 int MICROREAD_GATE_ID_P2P_TARGET ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static int microread_tm_send(struct nfc_hci_dev *hdev, struct sk_buff *skb)
{
 int r;

 r = nfc_hci_send_event(hdev, MICROREAD_GATE_ID_P2P_TARGET,
          MICROREAD_EVT_MCARD_EXCHANGE,
          skb->data, skb->len);

 kfree_skb(skb);

 return r;
}
