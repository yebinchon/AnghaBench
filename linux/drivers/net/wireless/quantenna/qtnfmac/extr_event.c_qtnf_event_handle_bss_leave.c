
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ iftype; } ;
struct qtnf_vif {int netdev; int vifid; TYPE_2__* mac; TYPE_1__ wdev; } ;
struct qlink_event_bss_leave {int reason; } ;
struct TYPE_4__ {int macid; } ;


 int EINVAL ;
 int EPROTO ;
 int GFP_KERNEL ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int cfg80211_disconnected (int ,int ,int *,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 int netif_carrier_off (int ) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,int ,int ,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
qtnf_event_handle_bss_leave(struct qtnf_vif *vif,
       const struct qlink_event_bss_leave *leave_info,
       u16 len)
{
 if (unlikely(len < sizeof(*leave_info))) {
  pr_err("VIF%u.%u: payload is too short (%u < %zu)\n",
         vif->mac->macid, vif->vifid, len,
         sizeof(struct qlink_event_bss_leave));
  return -EINVAL;
 }

 if (vif->wdev.iftype != NL80211_IFTYPE_STATION) {
  pr_err("VIF%u.%u: BSS_LEAVE event when not in STA mode\n",
         vif->mac->macid, vif->vifid);
  return -EPROTO;
 }

 pr_debug("VIF%u.%u: disconnected\n", vif->mac->macid, vif->vifid);

 cfg80211_disconnected(vif->netdev, le16_to_cpu(leave_info->reason),
         ((void*)0), 0, 0, GFP_KERNEL);
 netif_carrier_off(vif->netdev);

 return 0;
}
