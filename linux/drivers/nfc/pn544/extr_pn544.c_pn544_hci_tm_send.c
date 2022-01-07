
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {int len; int data; } ;
struct nfc_hci_dev {int dummy; } ;


 int PN544_HCI_EVT_SND_DATA ;
 int PN544_RF_READER_NFCIP1_TARGET_GATE ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,int ,int ,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int pn544_hci_tm_send(struct nfc_hci_dev *hdev, struct sk_buff *skb)
{
 int r;


 *(u8 *)skb_push(skb, 1) = 0;

 r = nfc_hci_send_event(hdev, PN544_RF_READER_NFCIP1_TARGET_GATE,
          PN544_HCI_EVT_SND_DATA, skb->data, skb->len);

 kfree_skb(skb);

 return r;
}
