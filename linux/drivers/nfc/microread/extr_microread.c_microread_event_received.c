
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {int len; int * data; } ;
struct nfc_hci_dev {int ndev; TYPE_1__* pipes; } ;
struct TYPE_2__ {size_t gate; } ;


 int EIO ;
 int EPROTO ;




 int MICROREAD_EVT_MREAD_DISCOVERY_STOP ;



 int MICROREAD_GATE_ID_P2P_TARGET ;
 int MICROREAD_PAR_P2P_TARGET_MODE ;
 int NFC_COMM_PASSIVE ;
 int NFC_PROTO_NFC_DEP_MASK ;
 int kfree_skb (struct sk_buff*) ;
 int microread_target_discovered (struct nfc_hci_dev*,size_t,struct sk_buff*) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,size_t,int ,int *,int ) ;
 int nfc_hci_set_param (struct nfc_hci_dev*,int ,int ,size_t*,int) ;
 int nfc_tm_activated (int ,int ,int ,int *,int) ;
 int nfc_tm_data_received (int ,struct sk_buff*) ;
 int pr_info (char*,size_t,size_t) ;
 int skb_trim (struct sk_buff*,int ) ;

__attribute__((used)) static int microread_event_received(struct nfc_hci_dev *hdev, u8 pipe,
         u8 event, struct sk_buff *skb)
{
 int r;
 u8 gate = hdev->pipes[pipe].gate;
 u8 mode;

 pr_info("Microread received event 0x%x to gate 0x%x\n", event, gate);

 switch (event) {
 case 131:
  microread_target_discovered(hdev, gate, skb);
  return 0;

 case 130:
  if (skb->len < 1) {
   kfree_skb(skb);
   return -EPROTO;
  }

  if (skb->data[skb->len - 1]) {
   kfree_skb(skb);
   return -EIO;
  }

  skb_trim(skb, skb->len - 1);

  r = nfc_tm_data_received(hdev->ndev, skb);
  break;

 case 132:
 case 133:
  kfree_skb(skb);
  return 0;

 case 129:
  r = nfc_tm_activated(hdev->ndev, NFC_PROTO_NFC_DEP_MASK,
         NFC_COMM_PASSIVE, skb->data,
         skb->len);

  kfree_skb(skb);
  break;

 case 134:
  if (skb->len < 1) {
   kfree_skb(skb);
   return -EPROTO;
  }

  if (skb->data[skb->len-1]) {
   kfree_skb(skb);
   return -EIO;
  }

  skb_trim(skb, skb->len - 1);

  r = nfc_tm_data_received(hdev->ndev, skb);
  break;

 case 128:
  kfree_skb(skb);

  mode = 0xff;
  r = nfc_hci_set_param(hdev, MICROREAD_GATE_ID_P2P_TARGET,
          MICROREAD_PAR_P2P_TARGET_MODE, &mode, 1);
  if (r)
   break;

  r = nfc_hci_send_event(hdev, gate,
           MICROREAD_EVT_MREAD_DISCOVERY_STOP, ((void*)0),
           0);
  break;

 default:
  return 1;
 }

 return r;
}
