
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_resp_get_hw_info {int dummy; } ;
struct qlink_cmd {int dummy; } ;


 int ENOMEM ;
 int QLINK_CMD_GET_HW_INFO ;
 int QLINK_MACID_RSVD ;
 int QLINK_VIFID_RSVD ;
 int consume_skb (struct sk_buff*) ;
 int qtnf_bus_lock (struct qtnf_bus*) ;
 int qtnf_bus_unlock (struct qtnf_bus*) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_resp_proc_hw_info (struct qtnf_bus*,struct qlink_resp_get_hw_info const*,size_t) ;
 int qtnf_cmd_send_with_reply (struct qtnf_bus*,struct sk_buff*,struct sk_buff**,int,size_t*) ;

int qtnf_cmd_get_hw_info(struct qtnf_bus *bus)
{
 struct sk_buff *cmd_skb, *resp_skb = ((void*)0);
 const struct qlink_resp_get_hw_info *resp;
 size_t info_len = 0;
 int ret = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(QLINK_MACID_RSVD, QLINK_VIFID_RSVD,
         QLINK_CMD_GET_HW_INFO,
         sizeof(struct qlink_cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(bus);
 ret = qtnf_cmd_send_with_reply(bus, cmd_skb, &resp_skb,
           sizeof(*resp), &info_len);
 if (ret)
  goto out;

 resp = (const struct qlink_resp_get_hw_info *)resp_skb->data;
 ret = qtnf_cmd_resp_proc_hw_info(bus, resp, info_len);

out:
 qtnf_bus_unlock(bus);
 consume_skb(resp_skb);

 return ret;
}
