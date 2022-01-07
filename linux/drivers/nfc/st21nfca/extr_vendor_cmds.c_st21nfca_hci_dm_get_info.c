
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; int len; } ;
struct nfc_hci_dev {int dummy; } ;
struct nfc_dev {int dummy; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int HCI_DM_GET_INFO ;
 int NFC_ATTR_VENDOR_DATA ;
 int ST21NFCA_DEVICE_MGNT_GATE ;
 int ST21NFCA_HCI_DM_GETINFO ;
 int ST21NFCA_VENDOR_OUI ;
 int kfree_skb (struct sk_buff*) ;
 struct nfc_hci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int nfc_hci_send_cmd (struct nfc_hci_dev*,int ,int ,void*,size_t,struct sk_buff**) ;
 struct sk_buff* nfc_vendor_cmd_alloc_reply_skb (struct nfc_dev*,int ,int ,int ) ;
 int nfc_vendor_cmd_reply (struct sk_buff*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int st21nfca_hci_dm_get_info(struct nfc_dev *dev, void *data,
        size_t data_len)
{
 int r;
 struct sk_buff *msg, *skb;
 struct nfc_hci_dev *hdev = nfc_get_drvdata(dev);

 r = nfc_hci_send_cmd(hdev,
        ST21NFCA_DEVICE_MGNT_GATE,
        ST21NFCA_HCI_DM_GETINFO,
        data, data_len, &skb);
 if (r)
  goto exit;

 msg = nfc_vendor_cmd_alloc_reply_skb(dev, ST21NFCA_VENDOR_OUI,
          HCI_DM_GET_INFO, skb->len);
 if (!msg) {
  r = -ENOMEM;
  goto free_skb;
 }

 if (nla_put(msg, NFC_ATTR_VENDOR_DATA, skb->len, skb->data)) {
  kfree_skb(msg);
  r = -ENOBUFS;
  goto free_skb;
 }

 r = nfc_vendor_cmd_reply(msg);

free_skb:
 kfree_skb(skb);
exit:
 return r;
}
