
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct wsm_tx {scalar_t__ queue_id; int flags; } ;
struct TYPE_6__ {int listen_interval; } ;
struct TYPE_7__ {TYPE_2__ assoc_req; } ;
struct ieee80211_mgmt {TYPE_3__ u; } ;
struct cw1200_txinfo {size_t hdrlen; TYPE_4__* hdr; TYPE_1__* skb; } ;
struct cw1200_common {scalar_t__ listen_interval; int bt_present; } ;
typedef int __be16 ;
struct TYPE_8__ {int frame_control; } ;
struct TYPE_5__ {int* data; } ;


 scalar_t__ ETH_P_PAE ;
 int WSM_EPTA_PRIORITY_ACTION ;
 int WSM_EPTA_PRIORITY_DATA ;
 int WSM_EPTA_PRIORITY_EAPOL ;
 int WSM_EPTA_PRIORITY_MGT ;
 int WSM_EPTA_PRIORITY_VIDEO ;
 int WSM_EPTA_PRIORITY_VOICE ;
 scalar_t__ WSM_QUEUE_VIDEO ;
 scalar_t__ WSM_QUEUE_VOICE ;
 scalar_t__ be16_to_cpu (int ) ;
 int cpu_to_le16 (scalar_t__) ;
 scalar_t__ ieee80211_is_action (int ) ;
 scalar_t__ ieee80211_is_assoc_req (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 scalar_t__ ieee80211_is_nullfunc (int ) ;
 scalar_t__ ieee80211_is_reassoc_req (int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int pr_debug (char*,int,...) ;

__attribute__((used)) static void
cw1200_tx_h_bt(struct cw1200_common *priv,
        struct cw1200_txinfo *t,
        struct wsm_tx *wsm)
{
 u8 priority = 0;

 if (!priv->bt_present)
  return;

 if (ieee80211_is_nullfunc(t->hdr->frame_control)) {
  priority = WSM_EPTA_PRIORITY_MGT;
 } else if (ieee80211_is_data(t->hdr->frame_control)) {

  u8 *payload = &t->skb->data[t->hdrlen];
  __be16 *ethertype = (__be16 *)&payload[6];
  if (be16_to_cpu(*ethertype) == ETH_P_PAE)
   priority = WSM_EPTA_PRIORITY_EAPOL;
 } else if (ieee80211_is_assoc_req(t->hdr->frame_control) ||
  ieee80211_is_reassoc_req(t->hdr->frame_control)) {
  struct ieee80211_mgmt *mgt_frame =
    (struct ieee80211_mgmt *)t->hdr;

  if (le16_to_cpu(mgt_frame->u.assoc_req.listen_interval) <
      priv->listen_interval) {
   pr_debug("Modified Listen Interval to %d from %d\n",
     priv->listen_interval,
     mgt_frame->u.assoc_req.listen_interval);



   mgt_frame->u.assoc_req.listen_interval = cpu_to_le16(priv->listen_interval);
  }
 }

 if (!priority) {
  if (ieee80211_is_action(t->hdr->frame_control))
   priority = WSM_EPTA_PRIORITY_ACTION;
  else if (ieee80211_is_mgmt(t->hdr->frame_control))
   priority = WSM_EPTA_PRIORITY_MGT;
  else if (wsm->queue_id == WSM_QUEUE_VOICE)
   priority = WSM_EPTA_PRIORITY_VOICE;
  else if (wsm->queue_id == WSM_QUEUE_VIDEO)
   priority = WSM_EPTA_PRIORITY_VIDEO;
  else
   priority = WSM_EPTA_PRIORITY_DATA;
 }

 pr_debug("[TX] EPTA priority %d.\n", priority);

 wsm->flags |= priority << 1;
}
