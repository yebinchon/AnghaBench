
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pn533 {int dummy; } ;
struct nfc_dev {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PN533_CMD_SAM_CONFIGURATION ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct pn533* nfc_get_drvdata (struct nfc_dev*) ;
 struct sk_buff* pn533_alloc_skb (struct pn533*,int) ;
 struct sk_buff* pn533_send_cmd_sync (struct pn533*,int ,struct sk_buff*) ;
 int skb_put_u8 (struct sk_buff*,int) ;

__attribute__((used)) static int pn532_sam_configuration(struct nfc_dev *nfc_dev)
{
 struct pn533 *dev = nfc_get_drvdata(nfc_dev);
 struct sk_buff *skb;
 struct sk_buff *resp;

 skb = pn533_alloc_skb(dev, 1);
 if (!skb)
  return -ENOMEM;

 skb_put_u8(skb, 0x01);

 resp = pn533_send_cmd_sync(dev, PN533_CMD_SAM_CONFIGURATION, skb);
 if (IS_ERR(resp))
  return PTR_ERR(resp);

 dev_kfree_skb(resp);
 return 0;
}
