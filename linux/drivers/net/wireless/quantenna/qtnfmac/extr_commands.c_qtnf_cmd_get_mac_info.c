
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct qtnf_wmac {int bus; int macid; } ;
struct qlink_resp_get_mac_info {int dummy; } ;
struct qlink_cmd {int dummy; } ;


 int ENOMEM ;
 int QLINK_CMD_MAC_INFO ;
 int QLINK_VIFID_RSVD ;
 int consume_skb (struct sk_buff*) ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_resp_proc_mac_info (struct qtnf_wmac*,struct qlink_resp_get_mac_info const*) ;
 int qtnf_cmd_send_with_reply (int ,struct sk_buff*,struct sk_buff**,int,size_t*) ;
 int qtnf_parse_variable_mac_info (struct qtnf_wmac*,struct qlink_resp_get_mac_info const*,size_t) ;

int qtnf_cmd_get_mac_info(struct qtnf_wmac *mac)
{
 struct sk_buff *cmd_skb, *resp_skb = ((void*)0);
 const struct qlink_resp_get_mac_info *resp;
 size_t var_data_len = 0;
 int ret = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(mac->macid, QLINK_VIFID_RSVD,
         QLINK_CMD_MAC_INFO,
         sizeof(struct qlink_cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(mac->bus);
 ret = qtnf_cmd_send_with_reply(mac->bus, cmd_skb, &resp_skb,
           sizeof(*resp), &var_data_len);
 if (ret)
  goto out;

 resp = (const struct qlink_resp_get_mac_info *)resp_skb->data;
 qtnf_cmd_resp_proc_mac_info(mac, resp);
 ret = qtnf_parse_variable_mac_info(mac, resp, var_data_len);

out:
 qtnf_bus_unlock(mac->bus);
 consume_skb(resp_skb);

 return ret;
}
