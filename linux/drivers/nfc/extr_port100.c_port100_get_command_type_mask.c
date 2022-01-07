
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct port100 {int dummy; } ;
typedef int __be64 ;


 scalar_t__ ENOMEM ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PORT100_CMD_GET_COMMAND_TYPE ;
 scalar_t__ PTR_ERR (struct sk_buff*) ;
 scalar_t__ be64_to_cpu (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* port100_alloc_skb (struct port100*,int ) ;
 struct sk_buff* port100_send_cmd_sync (struct port100*,int ,struct sk_buff*) ;

__attribute__((used)) static u64 port100_get_command_type_mask(struct port100 *dev)
{
 struct sk_buff *skb;
 struct sk_buff *resp;
 u64 mask;

 skb = port100_alloc_skb(dev, 0);
 if (!skb)
  return -ENOMEM;

 resp = port100_send_cmd_sync(dev, PORT100_CMD_GET_COMMAND_TYPE, skb);
 if (IS_ERR(resp))
  return PTR_ERR(resp);

 if (resp->len < 8)
  mask = 0;
 else
  mask = be64_to_cpu(*(__be64 *)resp->data);

 dev_kfree_skb(resp);

 return mask;
}
