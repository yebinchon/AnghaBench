
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; int len; } ;
struct nfc_dev {int dummy; } ;
struct nci_dev {int dummy; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int EPROTO ;
 int HCI_DM_VDC_VALUE_COMPARISON ;
 int NFC_ATTR_VENDOR_DATA ;
 int ST_NCI_DEVICE_MGNT_GATE ;
 int ST_NCI_HCI_DM_VDC_VALUE_COMPARISON ;
 int ST_NCI_VENDOR_OUI ;
 int kfree_skb (struct sk_buff*) ;
 int nci_hci_send_cmd (struct nci_dev*,int ,int ,void*,size_t,struct sk_buff**) ;
 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 struct sk_buff* nfc_vendor_cmd_alloc_reply_skb (struct nfc_dev*,int ,int ,int ) ;
 int nfc_vendor_cmd_reply (struct sk_buff*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int st_nci_hci_dm_vdc_value_comparison(struct nfc_dev *dev, void *data,
           size_t data_len)
{
 int r;
 struct sk_buff *msg, *skb;
 struct nci_dev *ndev = nfc_get_drvdata(dev);

 if (data_len != 2)
  return -EPROTO;

 r = nci_hci_send_cmd(ndev, ST_NCI_DEVICE_MGNT_GATE,
        ST_NCI_HCI_DM_VDC_VALUE_COMPARISON,
        data, data_len, &skb);
 if (r)
  goto exit;

 msg = nfc_vendor_cmd_alloc_reply_skb(dev, ST_NCI_VENDOR_OUI,
     HCI_DM_VDC_VALUE_COMPARISON, skb->len);
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
