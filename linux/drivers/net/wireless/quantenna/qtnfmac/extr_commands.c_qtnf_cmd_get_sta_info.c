
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct station_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_1__* mac; int vifid; } ;
struct qlink_tlv_hdr {int dummy; } ;
struct qlink_resp_get_sta_info {scalar_t__ info; int sta_addr; } ;
struct qlink_cmd_get_sta_info {int sta_addr; } ;
struct TYPE_2__ {int bus; int macid; } ;


 int EINVAL ;
 int ENOMEM ;
 int QLINK_CMD_GET_STA_INFO ;
 int consume_skb (struct sk_buff*) ;
 int ether_addr_copy (int ,int const*) ;
 int ether_addr_equal (int const*,int ) ;
 int pr_err (char*,int ,int ,int ,int const*) ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send_with_reply (int ,struct sk_buff*,struct sk_buff**,int,size_t*) ;
 int qtnf_cmd_sta_info_parse (struct station_info*,struct qlink_tlv_hdr const*,size_t) ;

int qtnf_cmd_get_sta_info(struct qtnf_vif *vif, const u8 *sta_mac,
     struct station_info *sinfo)
{
 struct sk_buff *cmd_skb, *resp_skb = ((void*)0);
 struct qlink_cmd_get_sta_info *cmd;
 const struct qlink_resp_get_sta_info *resp;
 size_t var_resp_len = 0;
 int ret = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_GET_STA_INFO,
         sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(vif->mac->bus);

 cmd = (struct qlink_cmd_get_sta_info *)cmd_skb->data;
 ether_addr_copy(cmd->sta_addr, sta_mac);

 ret = qtnf_cmd_send_with_reply(vif->mac->bus, cmd_skb, &resp_skb,
           sizeof(*resp), &var_resp_len);
 if (ret)
  goto out;

 resp = (const struct qlink_resp_get_sta_info *)resp_skb->data;

 if (!ether_addr_equal(sta_mac, resp->sta_addr)) {
  pr_err("VIF%u.%u: wrong mac in reply: %pM != %pM\n",
         vif->mac->macid, vif->vifid, resp->sta_addr, sta_mac);
  ret = -EINVAL;
  goto out;
 }

 qtnf_cmd_sta_info_parse(sinfo,
    (const struct qlink_tlv_hdr *)resp->info,
    var_resp_len);

out:
 qtnf_bus_unlock(vif->mac->bus);
 consume_skb(resp_skb);

 return ret;
}
