
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct nfc_mei_phy {scalar_t__ hard_fault; int hdev; } ;
struct mei_cl_device {int dummy; } ;


 int GFP_KERNEL ;
 int MEI_DUMP_SKB_IN (char*,struct sk_buff*) ;
 int MEI_NFC_HEADER_SIZE ;
 int MEI_NFC_MAX_READ ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct nfc_mei_phy* mei_cldev_get_drvdata (struct mei_cl_device*) ;
 int mei_nfc_recv (struct nfc_mei_phy*,int ,int ) ;
 int nfc_hci_recv_frame (int ,struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void nfc_mei_rx_cb(struct mei_cl_device *cldev)
{
 struct nfc_mei_phy *phy = mei_cldev_get_drvdata(cldev);
 struct sk_buff *skb;
 int reply_size;

 if (!phy)
  return;

 if (phy->hard_fault != 0)
  return;

 skb = alloc_skb(MEI_NFC_MAX_READ, GFP_KERNEL);
 if (!skb)
  return;

 reply_size = mei_nfc_recv(phy, skb->data, MEI_NFC_MAX_READ);
 if (reply_size < MEI_NFC_HEADER_SIZE) {
  kfree_skb(skb);
  return;
 }

 skb_put(skb, reply_size);
 skb_pull(skb, MEI_NFC_HEADER_SIZE);

 MEI_DUMP_SKB_IN("mei frame read", skb);

 nfc_hci_recv_frame(phy->hdev, skb);
}
