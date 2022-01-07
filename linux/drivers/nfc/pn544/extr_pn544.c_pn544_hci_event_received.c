
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {size_t* data; int len; } ;
struct nfc_hci_dev {int ndev; TYPE_1__* pipes; } ;
struct TYPE_2__ {size_t gate; } ;


 int EINVAL ;
 int EPROTO ;
 int NFC_COMM_PASSIVE ;
 int NFC_HCI_EVT_END_OPERATION ;
 int NFC_PROTO_NFC_DEP_MASK ;
 int PN544_DEP_ATR_REQ ;



 size_t PN544_RF_READER_NFCIP1_INITIATOR_GATE ;
 size_t PN544_RF_READER_NFCIP1_TARGET_GATE ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_hci_get_param (struct nfc_hci_dev*,size_t,int ,struct sk_buff**) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,size_t,int ,int *,int ) ;
 int nfc_hci_target_discovered (struct nfc_hci_dev*,size_t) ;
 int nfc_tm_activated (int ,int ,int ,size_t*,int) ;
 int nfc_tm_data_received (int ,struct sk_buff*) ;
 int pr_debug (char*,size_t) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int pn544_hci_event_received(struct nfc_hci_dev *hdev, u8 pipe, u8 event,
        struct sk_buff *skb)
{
 struct sk_buff *rgb_skb = ((void*)0);
 u8 gate = hdev->pipes[pipe].gate;
 int r;

 pr_debug("hci event %d\n", event);
 switch (event) {
 case 130:
  if (gate == PN544_RF_READER_NFCIP1_INITIATOR_GATE) {
   r = nfc_hci_target_discovered(hdev, gate);
  } else if (gate == PN544_RF_READER_NFCIP1_TARGET_GATE) {
   r = nfc_hci_get_param(hdev, gate, PN544_DEP_ATR_REQ,
           &rgb_skb);
   if (r < 0)
    goto exit;

   r = nfc_tm_activated(hdev->ndev, NFC_PROTO_NFC_DEP_MASK,
          NFC_COMM_PASSIVE, rgb_skb->data,
          rgb_skb->len);

   kfree_skb(rgb_skb);
  } else {
   r = -EINVAL;
  }
  break;
 case 129:
  r = nfc_hci_send_event(hdev, gate, NFC_HCI_EVT_END_OPERATION,
           ((void*)0), 0);
  break;
 case 128:
  if (skb->len < 2) {
   r = -EPROTO;
   goto exit;
  }

  if (skb->data[0] != 0) {
   pr_debug("data0 %d\n", skb->data[0]);
   r = -EPROTO;
   goto exit;
  }

  skb_pull(skb, 2);
  return nfc_tm_data_received(hdev->ndev, skb);
 default:
  return 1;
 }

exit:
 kfree_skb(skb);

 return r;
}
