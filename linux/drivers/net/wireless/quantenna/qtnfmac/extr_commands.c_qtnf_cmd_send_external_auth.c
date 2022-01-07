
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_1__* mac; int vifid; } ;
struct qlink_cmd_external_auth {int status; int bssid; } ;
struct cfg80211_external_auth_params {int status; int bssid; } ;
struct TYPE_2__ {int bus; int macid; } ;


 int ENOMEM ;
 int QLINK_CMD_EXTERNAL_AUTH ;
 int cpu_to_le16 (int ) ;
 int ether_addr_copy (int ,int ) ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (int ,struct sk_buff*) ;

int qtnf_cmd_send_external_auth(struct qtnf_vif *vif,
    struct cfg80211_external_auth_params *auth)
{
 struct sk_buff *cmd_skb;
 struct qlink_cmd_external_auth *cmd;
 int ret;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_EXTERNAL_AUTH,
         sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 cmd = (struct qlink_cmd_external_auth *)cmd_skb->data;

 ether_addr_copy(cmd->bssid, auth->bssid);
 cmd->status = cpu_to_le16(auth->status);

 qtnf_bus_lock(vif->mac->bus);
 ret = qtnf_cmd_send(vif->mac->bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(vif->mac->bus);

 return ret;
}
