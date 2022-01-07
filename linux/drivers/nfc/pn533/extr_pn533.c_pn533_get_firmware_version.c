
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int * data; } ;
struct pn533_fw_version {int support; int rev; int ver; int ic; } ;
struct pn533 {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PN533_CMD_GET_FIRMWARE_VERSION ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* pn533_alloc_skb (struct pn533*,int ) ;
 struct sk_buff* pn533_send_cmd_sync (struct pn533*,int ,struct sk_buff*) ;

__attribute__((used)) static int pn533_get_firmware_version(struct pn533 *dev,
          struct pn533_fw_version *fv)
{
 struct sk_buff *skb;
 struct sk_buff *resp;

 skb = pn533_alloc_skb(dev, 0);
 if (!skb)
  return -ENOMEM;

 resp = pn533_send_cmd_sync(dev, PN533_CMD_GET_FIRMWARE_VERSION, skb);
 if (IS_ERR(resp))
  return PTR_ERR(resp);

 fv->ic = resp->data[0];
 fv->ver = resp->data[1];
 fv->rev = resp->data[2];
 fv->support = resp->data[3];

 dev_kfree_skb(resp);
 return 0;
}
