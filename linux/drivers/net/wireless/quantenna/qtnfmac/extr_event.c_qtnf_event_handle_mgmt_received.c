
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct qtnf_vif {int wdev; TYPE_2__* netdev; int vifid; TYPE_1__* mac; } ;
struct qlink_event_rxmgmt {scalar_t__ frame_data; int sig_dbm; int freq; int flags; } ;
struct ieee80211_hdr_3addr {int addr2; int frame_control; } ;
typedef enum nl80211_rxmgmt_flags { ____Placeholder_nl80211_rxmgmt_flags } nl80211_rxmgmt_flags ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int macid; } ;


 int EINVAL ;
 int NL80211_RXMGMT_FLAG_ANSWERED ;
 int QLINK_RXMGMT_FLAG_ANSWERED ;
 int cfg80211_rx_mgmt (int *,int,int ,scalar_t__,int const,int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int pr_debug (char*,int ,int const,int ,int ) ;
 int pr_err (char*,int ,int ,int,size_t const) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
qtnf_event_handle_mgmt_received(struct qtnf_vif *vif,
    const struct qlink_event_rxmgmt *rxmgmt,
    u16 len)
{
 const size_t min_len = sizeof(*rxmgmt) +
          sizeof(struct ieee80211_hdr_3addr);
 const struct ieee80211_hdr_3addr *frame = (void *)rxmgmt->frame_data;
 const u16 frame_len = len - sizeof(*rxmgmt);
 enum nl80211_rxmgmt_flags flags = 0;

 if (unlikely(len < min_len)) {
  pr_err("VIF%u.%u: payload is too short (%u < %zu)\n",
         vif->mac->macid, vif->vifid, len, min_len);
  return -EINVAL;
 }

 if (le32_to_cpu(rxmgmt->flags) & QLINK_RXMGMT_FLAG_ANSWERED)
  flags |= NL80211_RXMGMT_FLAG_ANSWERED;

 pr_debug("%s LEN:%u FC:%.4X SA:%pM\n", vif->netdev->name, frame_len,
   le16_to_cpu(frame->frame_control), frame->addr2);

 cfg80211_rx_mgmt(&vif->wdev, le32_to_cpu(rxmgmt->freq), rxmgmt->sig_dbm,
    rxmgmt->frame_data, frame_len, flags);

 return 0;
}
