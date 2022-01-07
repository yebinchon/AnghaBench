
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int uapsd; int txop; int cw_max; int cw_min; int aifs; } ;
struct ieee80211_hw {size_t queues; struct cw1200_common* priv; } ;
struct TYPE_3__ {int uapsd_flags; } ;
struct TYPE_4__ {int * params; } ;
struct cw1200_common {scalar_t__ mode; scalar_t__ join_status; int conf_mutex; int powersave_mode; TYPE_1__ uapsd_info; scalar_t__ setbssparams_done; int edca; TYPE_2__ tx_queue_params; } ;


 scalar_t__ CW1200_JOIN_STATUS_STA ;
 int EINVAL ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int WSM_EDCA_SET (int *,size_t,int ,int ,int ,int ,int,int ) ;
 int WSM_TX_QUEUE_SET (TYPE_2__*,size_t,int ,int ,int ) ;
 int cw1200_set_pm (struct cw1200_common*,int *) ;
 int cw1200_set_uapsd_param (struct cw1200_common*,int *) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wsm_set_edca_params (struct cw1200_common*,int *) ;
 int wsm_set_tx_queue_params (struct cw1200_common*,int *,size_t) ;

int cw1200_conf_tx(struct ieee80211_hw *dev, struct ieee80211_vif *vif,
     u16 queue, const struct ieee80211_tx_queue_params *params)
{
 struct cw1200_common *priv = dev->priv;
 int ret = 0;

 bool old_uapsd_flags;

 mutex_lock(&priv->conf_mutex);

 if (queue < dev->queues) {
  old_uapsd_flags = le16_to_cpu(priv->uapsd_info.uapsd_flags);

  WSM_TX_QUEUE_SET(&priv->tx_queue_params, queue, 0, 0, 0);
  ret = wsm_set_tx_queue_params(priv,
           &priv->tx_queue_params.params[queue], queue);
  if (ret) {
   ret = -EINVAL;
   goto out;
  }

  WSM_EDCA_SET(&priv->edca, queue, params->aifs,
        params->cw_min, params->cw_max,
        params->txop, 0xc8,
        params->uapsd);
  ret = wsm_set_edca_params(priv, &priv->edca);
  if (ret) {
   ret = -EINVAL;
   goto out;
  }

  if (priv->mode == NL80211_IFTYPE_STATION) {
   ret = cw1200_set_uapsd_param(priv, &priv->edca);
   if (!ret && priv->setbssparams_done &&
       (priv->join_status == CW1200_JOIN_STATUS_STA) &&
       (old_uapsd_flags != le16_to_cpu(priv->uapsd_info.uapsd_flags)))
    ret = cw1200_set_pm(priv, &priv->powersave_mode);
  }
 } else {
  ret = -EINVAL;
 }

out:
 mutex_unlock(&priv->conf_mutex);
 return ret;
}
