
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct qtnf_vif {int vifid; TYPE_1__* mac; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_tlv_hdr {scalar_t__ val; void* len; void* type; } ;
struct qlink_cmd {int dummy; } ;
struct qlink_acl_data {int dummy; } ;
struct cfg80211_acl_data {int n_acl_entries; } ;
struct TYPE_2__ {int macid; struct qtnf_bus* bus; } ;


 int ENOMEM ;
 int QLINK_CMD_SET_MAC_ACL ;
 size_t QTN_TLV_ID_ACL_DATA ;
 void* cpu_to_le16 (size_t) ;
 int mac_addrs ;
 int qlink_acl_data_cfg2q (struct cfg80211_acl_data const*,struct qlink_acl_data*) ;
 int qtnf_bus_lock (struct qtnf_bus*) ;
 int qtnf_bus_unlock (struct qtnf_bus*) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (struct qtnf_bus*,struct sk_buff*) ;
 struct qlink_tlv_hdr* skb_put (struct sk_buff*,int) ;
 size_t struct_size (struct cfg80211_acl_data const*,int ,int ) ;

int qtnf_cmd_set_mac_acl(const struct qtnf_vif *vif,
    const struct cfg80211_acl_data *params)
{
 struct qtnf_bus *bus = vif->mac->bus;
 struct sk_buff *cmd_skb;
 struct qlink_tlv_hdr *tlv;
 size_t acl_size = struct_size(params, mac_addrs, params->n_acl_entries);
 int ret;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_SET_MAC_ACL,
         sizeof(struct qlink_cmd));
 if (!cmd_skb)
  return -ENOMEM;

 tlv = skb_put(cmd_skb, sizeof(*tlv) + acl_size);
 tlv->type = cpu_to_le16(QTN_TLV_ID_ACL_DATA);
 tlv->len = cpu_to_le16(acl_size);
 qlink_acl_data_cfg2q(params, (struct qlink_acl_data *)tlv->val);

 qtnf_bus_lock(bus);
 ret = qtnf_cmd_send(bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(bus);

 return ret;
}
