
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_dev {int dummy; } ;
struct nci_dev {int manufact_specific_info; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int MANUFACTURER_SPECIFIC ;
 int NFC_ATTR_VENDOR_DATA ;
 int ST_NCI_VENDOR_OUI ;
 int kfree_skb (struct sk_buff*) ;
 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 struct sk_buff* nfc_vendor_cmd_alloc_reply_skb (struct nfc_dev*,int ,int ,int) ;
 int nfc_vendor_cmd_reply (struct sk_buff*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int *) ;

__attribute__((used)) static int st_nci_manufacturer_specific(struct nfc_dev *dev, void *data,
     size_t data_len)
{
 struct sk_buff *msg;
 struct nci_dev *ndev = nfc_get_drvdata(dev);

 msg = nfc_vendor_cmd_alloc_reply_skb(dev, ST_NCI_VENDOR_OUI,
     MANUFACTURER_SPECIFIC,
     sizeof(ndev->manufact_specific_info));
 if (!msg)
  return -ENOMEM;

 if (nla_put(msg, NFC_ATTR_VENDOR_DATA, sizeof(ndev->manufact_specific_info),
      &ndev->manufact_specific_info)) {
  kfree_skb(msg);
  return -ENOBUFS;
 }

 return nfc_vendor_cmd_reply(msg);
}
