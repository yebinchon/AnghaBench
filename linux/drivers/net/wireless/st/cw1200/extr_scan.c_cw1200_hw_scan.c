
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wsm_template_frame {scalar_t__ skb; int frame_type; } ;
struct wsm_ssid {scalar_t__ length; int * ssid; } ;
struct ieee80211_vif {int dummy; } ;
struct cfg80211_scan_request {int n_ssids; size_t n_channels; TYPE_2__* ssids; int * channels; scalar_t__ ie_len; int ie; } ;
struct ieee80211_scan_request {struct cfg80211_scan_request req; } ;
struct ieee80211_hw {int wiphy; struct cw1200_common* priv; } ;
struct TYPE_6__ {size_t n_ssids; int work; struct wsm_ssid* ssids; int output_power; int * end; int * begin; int * curr; scalar_t__ status; struct cfg80211_scan_request* req; int lock; } ;
struct cw1200_common {scalar_t__ join_status; TYPE_3__ scan; int workqueue; int conf_mutex; int output_power; TYPE_1__* vif; } ;
struct TYPE_5__ {scalar_t__ ssid_len; int ssid; } ;
struct TYPE_4__ {int addr; } ;


 int BUG_ON (struct cfg80211_scan_request*) ;
 scalar_t__ CW1200_JOIN_STATUS_AP ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int WSM_FRAME_TYPE_PROBE_REQUEST ;
 int WSM_SCAN_MAX_NUM_OF_SSIDS ;
 int dev_kfree_skb (scalar_t__) ;
 int down (int *) ;
 scalar_t__ ieee80211_probereq_get (struct ieee80211_hw*,int ,int *,int ,scalar_t__) ;
 int memcpy (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;
 int skb_put_data (scalar_t__,int ,scalar_t__) ;
 int up (int *) ;
 int wiphy_dbg (int ,char*,int) ;
 int wsm_lock_tx (struct cw1200_common*) ;
 int wsm_set_probe_responder (struct cw1200_common*,int) ;
 int wsm_set_template_frame (struct cw1200_common*,struct wsm_template_frame*) ;

int cw1200_hw_scan(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct ieee80211_scan_request *hw_req)
{
 struct cw1200_common *priv = hw->priv;
 struct cfg80211_scan_request *req = &hw_req->req;
 struct wsm_template_frame frame = {
  .frame_type = WSM_FRAME_TYPE_PROBE_REQUEST,
 };
 int i, ret;

 if (!priv->vif)
  return -EINVAL;


 if (priv->join_status == CW1200_JOIN_STATUS_AP)
  return -EOPNOTSUPP;

 if (req->n_ssids == 1 && !req->ssids[0].ssid_len)
  req->n_ssids = 0;

 wiphy_dbg(hw->wiphy, "[SCAN] Scan request for %d SSIDs.\n",
    req->n_ssids);

 if (req->n_ssids > WSM_SCAN_MAX_NUM_OF_SSIDS)
  return -EINVAL;


 down(&priv->scan.lock);
 mutex_lock(&priv->conf_mutex);

 frame.skb = ieee80211_probereq_get(hw, priv->vif->addr, ((void*)0), 0,
  req->ie_len);
 if (!frame.skb) {
  mutex_unlock(&priv->conf_mutex);
  up(&priv->scan.lock);
  return -ENOMEM;
 }

 if (req->ie_len)
  skb_put_data(frame.skb, req->ie, req->ie_len);

 ret = wsm_set_template_frame(priv, &frame);
 if (!ret) {

  ret = wsm_set_probe_responder(priv, 1);
 }
 if (ret) {
  dev_kfree_skb(frame.skb);
  mutex_unlock(&priv->conf_mutex);
  up(&priv->scan.lock);
  return ret;
 }

 wsm_lock_tx(priv);

 BUG_ON(priv->scan.req);
 priv->scan.req = req;
 priv->scan.n_ssids = 0;
 priv->scan.status = 0;
 priv->scan.begin = &req->channels[0];
 priv->scan.curr = priv->scan.begin;
 priv->scan.end = &req->channels[req->n_channels];
 priv->scan.output_power = priv->output_power;

 for (i = 0; i < req->n_ssids; ++i) {
  struct wsm_ssid *dst = &priv->scan.ssids[priv->scan.n_ssids];
  memcpy(&dst->ssid[0], req->ssids[i].ssid, sizeof(dst->ssid));
  dst->length = req->ssids[i].ssid_len;
  ++priv->scan.n_ssids;
 }

 if (frame.skb)
  dev_kfree_skb(frame.skb);
 mutex_unlock(&priv->conf_mutex);
 queue_work(priv->workqueue, &priv->scan.work);
 return 0;
}
