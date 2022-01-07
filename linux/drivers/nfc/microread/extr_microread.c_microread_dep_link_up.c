
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ len; int data; } ;
struct nfc_target {int idx; int hci_reader_gate; } ;
struct nfc_hci_dev {int ndev; } ;


 int EPROTO ;
 int MICROREAD_PAR_P2P_INITIATOR_GT ;
 scalar_t__ NFC_GB_MAXSIZE ;
 int NFC_RF_INITIATOR ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_dep_link_is_up (int ,int ,int ,int ) ;
 int nfc_hci_get_param (struct nfc_hci_dev*,int ,int ,struct sk_buff**) ;
 int nfc_set_remote_general_bytes (int ,int ,scalar_t__) ;

__attribute__((used)) static int microread_dep_link_up(struct nfc_hci_dev *hdev,
    struct nfc_target *target, u8 comm_mode,
    u8 *gb, size_t gb_len)
{
 struct sk_buff *rgb_skb = ((void*)0);
 int r;

 r = nfc_hci_get_param(hdev, target->hci_reader_gate,
         MICROREAD_PAR_P2P_INITIATOR_GT, &rgb_skb);
 if (r < 0)
  return r;

 if (rgb_skb->len == 0 || rgb_skb->len > NFC_GB_MAXSIZE) {
  r = -EPROTO;
  goto exit;
 }

 r = nfc_set_remote_general_bytes(hdev->ndev, rgb_skb->data,
      rgb_skb->len);
 if (r == 0)
  r = nfc_dep_link_is_up(hdev->ndev, target->idx, comm_mode,
           NFC_RF_INITIATOR);
exit:
 kfree_skb(rgb_skb);

 return r;
}
