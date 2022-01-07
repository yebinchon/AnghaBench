
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int curr_nfc_dep_pni; } ;
struct st21nfca_hci_info {TYPE_1__ dep_info; } ;
struct sk_buff {int len; int data; } ;
struct nfc_hci_dev {int dummy; } ;


 int ST21NFCA_EVT_SEND_DATA ;
 int ST21NFCA_NFCIP1_DEP_RES ;
 int ST21NFCA_NFCIP1_RES ;
 int ST21NFCA_RF_CARD_F_GATE ;
 int kfree_skb (struct sk_buff*) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,int ,int ,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;

int st21nfca_tm_send_dep_res(struct nfc_hci_dev *hdev, struct sk_buff *skb)
{
 int r;
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);

 *(u8 *)skb_push(skb, 1) = info->dep_info.curr_nfc_dep_pni;
 *(u8 *)skb_push(skb, 1) = ST21NFCA_NFCIP1_DEP_RES;
 *(u8 *)skb_push(skb, 1) = ST21NFCA_NFCIP1_RES;
 *(u8 *)skb_push(skb, 1) = skb->len;

 r = nfc_hci_send_event(hdev, ST21NFCA_RF_CARD_F_GATE,
   ST21NFCA_EVT_SEND_DATA, skb->data, skb->len);
 kfree_skb(skb);

 return r;
}
