
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {int vifid; TYPE_1__* mac; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_cmd_wowlan_set {int triggers; } ;
struct cfg80211_wowlan {int n_patterns; TYPE_2__* patterns; scalar_t__ magic_pkt; scalar_t__ disconnect; } ;
struct TYPE_4__ {int pattern_len; int pattern; } ;
struct TYPE_3__ {int macid; struct qtnf_bus* bus; } ;


 int ENOMEM ;
 int QLINK_CMD_WOWLAN_SET ;
 int QLINK_WOWLAN_TRIG_DISCONNECT ;
 int QLINK_WOWLAN_TRIG_MAGIC_PKT ;
 int QLINK_WOWLAN_TRIG_PATTERN_PKT ;
 int QTN_TLV_ID_WOWLAN_PATTERN ;
 int cpu_to_le32 (int ) ;
 int qtnf_bus_lock (struct qtnf_bus*) ;
 int qtnf_bus_unlock (struct qtnf_bus*) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (struct qtnf_bus*,struct sk_buff*) ;
 int qtnf_cmd_skb_put_tlv_arr (struct sk_buff*,int ,int ,int ) ;

int qtnf_cmd_send_wowlan_set(const struct qtnf_vif *vif,
        const struct cfg80211_wowlan *wowl)
{
 struct qtnf_bus *bus = vif->mac->bus;
 struct sk_buff *cmd_skb;
 struct qlink_cmd_wowlan_set *cmd;
 u32 triggers = 0;
 int count = 0;
 int ret = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_WOWLAN_SET, sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(bus);

 cmd = (struct qlink_cmd_wowlan_set *)cmd_skb->data;

 if (wowl) {
  if (wowl->disconnect)
   triggers |= QLINK_WOWLAN_TRIG_DISCONNECT;

  if (wowl->magic_pkt)
   triggers |= QLINK_WOWLAN_TRIG_MAGIC_PKT;

  if (wowl->n_patterns && wowl->patterns) {
   triggers |= QLINK_WOWLAN_TRIG_PATTERN_PKT;
   while (count < wowl->n_patterns) {
    qtnf_cmd_skb_put_tlv_arr(cmd_skb,
     QTN_TLV_ID_WOWLAN_PATTERN,
     wowl->patterns[count].pattern,
     wowl->patterns[count].pattern_len);
    count++;
   }
  }
 }

 cmd->triggers = cpu_to_le32(triggers);

 ret = qtnf_cmd_send(bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(bus);
 return ret;
}
