
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct qtnf_wmac {int bus; int macid; } ;
struct qlink_resp_phy_params {int info; } ;
struct qlink_cmd {int dummy; } ;


 int ENOMEM ;
 int QLINK_CMD_PHY_PARAMS_GET ;
 int consume_skb (struct sk_buff*) ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_resp_proc_phy_params (struct qtnf_wmac*,int ,size_t) ;
 int qtnf_cmd_send_with_reply (int ,struct sk_buff*,struct sk_buff**,int,size_t*) ;

int qtnf_cmd_send_get_phy_params(struct qtnf_wmac *mac)
{
 struct sk_buff *cmd_skb, *resp_skb = ((void*)0);
 struct qlink_resp_phy_params *resp;
 size_t response_size = 0;
 int ret = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(mac->macid, 0,
         QLINK_CMD_PHY_PARAMS_GET,
         sizeof(struct qlink_cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(mac->bus);
 ret = qtnf_cmd_send_with_reply(mac->bus, cmd_skb, &resp_skb,
           sizeof(*resp), &response_size);
 if (ret)
  goto out;

 resp = (struct qlink_resp_phy_params *)resp_skb->data;
 ret = qtnf_cmd_resp_proc_phy_params(mac, resp->info, response_size);

out:
 qtnf_bus_unlock(mac->bus);
 consume_skb(resp_skb);

 return ret;
}
