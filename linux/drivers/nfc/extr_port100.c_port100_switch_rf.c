
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct port100 {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PORT100_CMD_SWITCH_RF ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct port100* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;
 int port100_abort_cmd (struct nfc_digital_dev*) ;
 struct sk_buff* port100_alloc_skb (struct port100*,int) ;
 struct sk_buff* port100_send_cmd_sync (struct port100*,int ,struct sk_buff*) ;
 int skb_put_u8 (struct sk_buff*,int) ;

__attribute__((used)) static int port100_switch_rf(struct nfc_digital_dev *ddev, bool on)
{
 struct port100 *dev = nfc_digital_get_drvdata(ddev);
 struct sk_buff *skb, *resp;

 skb = port100_alloc_skb(dev, 1);
 if (!skb)
  return -ENOMEM;

 skb_put_u8(skb, on ? 1 : 0);


 if (!on)
  port100_abort_cmd(ddev);

 resp = port100_send_cmd_sync(dev, PORT100_CMD_SWITCH_RF, skb);

 if (IS_ERR(resp))
  return PTR_ERR(resp);

 dev_kfree_skb(resp);

 return 0;
}
