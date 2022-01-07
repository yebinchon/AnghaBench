
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ len; int data; } ;
struct nfc_target {int idx; int hci_reader_gate; } ;
struct nfc_hci_dev {int ndev; } ;


 int DUMP_PREFIX_OFFSET ;
 int EPROTO ;
 int KERN_DEBUG ;
 scalar_t__ NFC_GB_MAXSIZE ;
 int NFC_RF_INITIATOR ;
 int PN544_DEP_ATR_RES ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_dep_link_is_up (int ,int ,int ,int ) ;
 int nfc_hci_get_param (struct nfc_hci_dev*,int ,int ,struct sk_buff**) ;
 int nfc_set_remote_general_bytes (int ,int ,scalar_t__) ;
 int print_hex_dump (int ,char*,int ,int,int,int ,scalar_t__,int) ;

__attribute__((used)) static int pn544_hci_dep_link_up(struct nfc_hci_dev *hdev,
    struct nfc_target *target, u8 comm_mode,
    u8 *gb, size_t gb_len)
{
 struct sk_buff *rgb_skb = ((void*)0);
 int r;

 r = nfc_hci_get_param(hdev, target->hci_reader_gate,
    PN544_DEP_ATR_RES, &rgb_skb);
 if (r < 0)
  return r;

 if (rgb_skb->len == 0 || rgb_skb->len > NFC_GB_MAXSIZE) {
  r = -EPROTO;
  goto exit;
 }
 print_hex_dump(KERN_DEBUG, "remote gb: ", DUMP_PREFIX_OFFSET,
   16, 1, rgb_skb->data, rgb_skb->len, 1);

 r = nfc_set_remote_general_bytes(hdev->ndev, rgb_skb->data,
      rgb_skb->len);

 if (r == 0)
  r = nfc_dep_link_is_up(hdev->ndev, target->idx, comm_mode,
     NFC_RF_INITIATOR);
exit:
 kfree_skb(rgb_skb);
 return r;
}
