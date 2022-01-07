
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct sk_buff* rx_skb; int req_completion; } ;
struct st21nfca_hci_info {TYPE_1__ vendor_info; } ;
struct sk_buff {size_t len; int data; } ;
struct nfc_hci_dev {int ndev; } ;
struct nfc_dev {int dummy; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int EPROTO ;
 int HCI_LOOPBACK ;
 int NFC_ATTR_VENDOR_DATA ;
 int NFC_HCI_LOOPBACK_GATE ;
 int ST21NFCA_EVT_POST_DATA ;
 int ST21NFCA_VENDOR_OUI ;
 int kfree_skb (struct sk_buff*) ;
 struct nfc_hci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,int ,void*,size_t) ;
 struct sk_buff* nfc_vendor_cmd_alloc_reply_skb (int ,int ,int ,size_t) ;
 int nfc_vendor_cmd_reply (struct sk_buff*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,size_t,int ) ;
 int reinit_completion (int *) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int st21nfca_hci_loopback(struct nfc_dev *dev, void *data,
     size_t data_len)
{
 int r;
 struct sk_buff *msg;
 struct nfc_hci_dev *hdev = nfc_get_drvdata(dev);
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);

 if (data_len <= 0)
  return -EPROTO;

 reinit_completion(&info->vendor_info.req_completion);
 info->vendor_info.rx_skb = ((void*)0);

 r = nfc_hci_send_event(hdev, NFC_HCI_LOOPBACK_GATE,
          ST21NFCA_EVT_POST_DATA, data, data_len);
 if (r < 0) {
  r = -EPROTO;
  goto exit;
 }

 wait_for_completion_interruptible(&info->vendor_info.req_completion);
 if (!info->vendor_info.rx_skb ||
     info->vendor_info.rx_skb->len != data_len) {
  r = -EPROTO;
  goto exit;
 }

 msg = nfc_vendor_cmd_alloc_reply_skb(hdev->ndev,
     ST21NFCA_VENDOR_OUI,
     HCI_LOOPBACK,
     info->vendor_info.rx_skb->len);
 if (!msg) {
  r = -ENOMEM;
  goto free_skb;
 }

 if (nla_put(msg, NFC_ATTR_VENDOR_DATA, info->vendor_info.rx_skb->len,
      info->vendor_info.rx_skb->data)) {
  kfree_skb(msg);
  r = -ENOBUFS;
  goto free_skb;
 }

 r = nfc_vendor_cmd_reply(msg);
free_skb:
 kfree_skb(info->vendor_info.rx_skb);
exit:
 return r;
}
