
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct qtnf_wmac {int macid; } ;
struct TYPE_2__ {scalar_t__ iftype; } ;
struct qtnf_vif {int netdev; int vifid; TYPE_1__ wdev; } ;
struct qlink_event_sta_deauth {int * sta_addr; int reason; } ;


 int EINVAL ;
 int EPROTO ;
 int GFP_KERNEL ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int cfg80211_del_sta (int ,int *,int ) ;
 int le16_to_cpu (int ) ;
 int pr_debug (char*,int ,int ,int const*,int) ;
 int pr_err (char*,int ,int ,...) ;
 scalar_t__ qtnf_sta_list_del (struct qtnf_vif*,int const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
qtnf_event_handle_sta_deauth(struct qtnf_wmac *mac, struct qtnf_vif *vif,
        const struct qlink_event_sta_deauth *sta_deauth,
        u16 len)
{
 const u8 *sta_addr;
 u16 reason;

 if (unlikely(len < sizeof(*sta_deauth))) {
  pr_err("VIF%u.%u: payload is too short (%u < %zu)\n",
         mac->macid, vif->vifid, len,
         sizeof(struct qlink_event_sta_deauth));
  return -EINVAL;
 }

 if (vif->wdev.iftype != NL80211_IFTYPE_AP) {
  pr_err("VIF%u.%u: STA_DEAUTH event when not in AP mode\n",
         mac->macid, vif->vifid);
  return -EPROTO;
 }

 sta_addr = sta_deauth->sta_addr;
 reason = le16_to_cpu(sta_deauth->reason);

 pr_debug("VIF%u.%u: MAC:%pM reason:%x\n", mac->macid, vif->vifid,
   sta_addr, reason);

 if (qtnf_sta_list_del(vif, sta_addr))
  cfg80211_del_sta(vif->netdev, sta_deauth->sta_addr,
     GFP_KERNEL);

 return 0;
}
