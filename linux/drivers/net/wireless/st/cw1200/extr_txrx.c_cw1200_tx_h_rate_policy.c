
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wsm_tx {int flags; int ht_tx_parameters; int max_tx_rate; } ;
struct TYPE_5__ {int rate_id; } ;
struct cw1200_txinfo {TYPE_4__* rate; TYPE_3__* tx_info; TYPE_1__ txpriv; } ;
struct cw1200_common {int tx_policy_upload_work; int workqueue; int ht_info; } ;
struct TYPE_8__ {int flags; int hw_value; } ;
struct TYPE_6__ {int * rates; } ;
struct TYPE_7__ {TYPE_2__ control; } ;


 int CW1200_INVALID_RATE_ID ;
 int EFAULT ;
 int IEEE80211_TX_MAX_RATES ;
 int IEEE80211_TX_RC_MCS ;
 int WSM_HT_TX_GREENFIELD ;
 int WSM_HT_TX_MIXED ;
 int __cpu_to_le32 (int ) ;
 TYPE_4__* cw1200_get_tx_rate (struct cw1200_common*,int *) ;
 scalar_t__ cw1200_ht_greenfield (int *) ;
 int cw1200_tx_queues_lock (struct cw1200_common*) ;
 int cw1200_tx_queues_unlock (struct cw1200_common*) ;
 int pr_debug (char*) ;
 scalar_t__ queue_work (int ,int *) ;
 int tx_policy_get (struct cw1200_common*,int *,int ,int*) ;
 int wsm_lock_tx_async (struct cw1200_common*) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

__attribute__((used)) static int
cw1200_tx_h_rate_policy(struct cw1200_common *priv,
   struct cw1200_txinfo *t,
   struct wsm_tx *wsm)
{
 bool tx_policy_renew = 0;

 t->txpriv.rate_id = tx_policy_get(priv,
  t->tx_info->control.rates, IEEE80211_TX_MAX_RATES,
  &tx_policy_renew);
 if (t->txpriv.rate_id == CW1200_INVALID_RATE_ID)
  return -EFAULT;

 wsm->flags |= t->txpriv.rate_id << 4;

 t->rate = cw1200_get_tx_rate(priv,
  &t->tx_info->control.rates[0]),
 wsm->max_tx_rate = t->rate->hw_value;
 if (t->rate->flags & IEEE80211_TX_RC_MCS) {
  if (cw1200_ht_greenfield(&priv->ht_info))
   wsm->ht_tx_parameters |=
    __cpu_to_le32(WSM_HT_TX_GREENFIELD);
  else
   wsm->ht_tx_parameters |=
    __cpu_to_le32(WSM_HT_TX_MIXED);
 }

 if (tx_policy_renew) {
  pr_debug("[TX] TX policy renew.\n");




  wsm_lock_tx_async(priv);
  cw1200_tx_queues_lock(priv);
  if (queue_work(priv->workqueue,
          &priv->tx_policy_upload_work) <= 0) {
   cw1200_tx_queues_unlock(priv);
   wsm_unlock_tx(priv);
  }
 }
 return 0;
}
