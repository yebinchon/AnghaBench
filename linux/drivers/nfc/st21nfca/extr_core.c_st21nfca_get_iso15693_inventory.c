
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; int * data; } ;
struct nfc_target {int is_iso15693; int iso15693_dsfid; int iso15693_uid; } ;
struct nfc_hci_dev {int dummy; } ;


 int EPROTO ;
 scalar_t__ NFC_ISO15693_UID_MAXSIZE ;
 int ST21NFCA_RF_READER_ISO15693_GATE ;
 int ST21NFCA_RF_READER_ISO15693_INVENTORY ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int *,scalar_t__) ;
 int nfc_hci_get_param (struct nfc_hci_dev*,int ,int ,struct sk_buff**) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int st21nfca_get_iso15693_inventory(struct nfc_hci_dev *hdev,
        struct nfc_target *target)
{
 int r;
 struct sk_buff *inventory_skb = ((void*)0);

 r = nfc_hci_get_param(hdev, ST21NFCA_RF_READER_ISO15693_GATE,
         ST21NFCA_RF_READER_ISO15693_INVENTORY,
         &inventory_skb);
 if (r < 0)
  goto exit;

 skb_pull(inventory_skb, 2);

 if (inventory_skb->len == 0 ||
     inventory_skb->len > NFC_ISO15693_UID_MAXSIZE) {
  r = -EPROTO;
  goto exit;
 }

 memcpy(target->iso15693_uid, inventory_skb->data, inventory_skb->len);
 target->iso15693_dsfid = inventory_skb->data[1];
 target->is_iso15693 = 1;
exit:
 kfree_skb(inventory_skb);
 return r;
}
