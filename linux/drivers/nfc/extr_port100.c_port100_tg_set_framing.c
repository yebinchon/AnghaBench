
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; } ;
struct port100_protocol {scalar_t__ number; } ;
struct port100 {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NFC_DIGITAL_FRAMING_LAST ;
 int PORT100_CMD_TG_SET_PROTOCOL ;
 scalar_t__ PORT100_TG_PROT_END ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct port100* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;
 struct sk_buff* port100_alloc_skb (struct port100*,size_t) ;
 struct sk_buff* port100_send_cmd_sync (struct port100*,int ,struct sk_buff*) ;
 int skb_put_data (struct sk_buff*,struct port100_protocol*,size_t) ;
 struct port100_protocol** tg_protocols ;

__attribute__((used)) static int port100_tg_set_framing(struct nfc_digital_dev *ddev, int param)
{
 struct port100 *dev = nfc_digital_get_drvdata(ddev);
 struct port100_protocol *protocols;
 struct sk_buff *skb;
 struct sk_buff *resp;
 int rc;
 int num_protocols;
 size_t size;

 if (param >= NFC_DIGITAL_FRAMING_LAST)
  return -EINVAL;

 protocols = tg_protocols[param];

 num_protocols = 0;
 while (protocols[num_protocols].number != PORT100_TG_PROT_END)
  num_protocols++;

 if (!num_protocols)
  return 0;

 size = sizeof(struct port100_protocol) * num_protocols;

 skb = port100_alloc_skb(dev, size);
 if (!skb)
  return -ENOMEM;

 skb_put_data(skb, protocols, size);

 resp = port100_send_cmd_sync(dev, PORT100_CMD_TG_SET_PROTOCOL, skb);

 if (IS_ERR(resp))
  return PTR_ERR(resp);

 rc = resp->data[0];

 dev_kfree_skb(resp);

 return rc;
}
