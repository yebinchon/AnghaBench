
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; int len; } ;
struct nfc_dev {int dummy; } ;
struct nci_dev {int dummy; } ;
struct get_param_data {int data; int gate; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int EPROTO ;
 int HCI_GET_PARAM ;
 int NFC_ATTR_VENDOR_DATA ;
 int ST_NCI_VENDOR_OUI ;
 int kfree_skb (struct sk_buff*) ;
 int nci_hci_get_param (struct nci_dev*,int ,int ,struct sk_buff**) ;
 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 struct sk_buff* nfc_vendor_cmd_alloc_reply_skb (struct nfc_dev*,int ,int ,int ) ;
 int nfc_vendor_cmd_reply (struct sk_buff*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int st_nci_hci_get_param(struct nfc_dev *dev, void *data,
    size_t data_len)
{
 int r;
 struct sk_buff *msg, *skb;
 struct nci_dev *ndev = nfc_get_drvdata(dev);
 struct get_param_data *param = (struct get_param_data *)data;

 if (data_len < sizeof(struct get_param_data))
  return -EPROTO;

 r = nci_hci_get_param(ndev, param->gate, param->data, &skb);
 if (r)
  goto exit;

 msg = nfc_vendor_cmd_alloc_reply_skb(dev, ST_NCI_VENDOR_OUI,
          HCI_GET_PARAM, skb->len);
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
