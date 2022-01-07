
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wsm_tx_rate_retry_policy {int index; int flags; int rate_count_indices; int long_retries; int short_retries; } ;
struct wsm_set_tx_rate_retry_policy {size_t num; struct wsm_tx_rate_retry_policy* tbl; } ;
struct tx_policy_cache {int lock; TYPE_1__* cache; } ;
struct tx_policy {int uploaded; int tbl; scalar_t__ retry_count; } ;
struct cw1200_common {int long_frame_max_tx_count; int short_frame_max_tx_count; struct tx_policy_cache tx_policy_cache; } ;
struct TYPE_2__ {struct tx_policy policy; } ;


 int TX_POLICY_CACHE_SIZE ;
 int WSM_TX_RATE_POLICY_FLAG_COUNT_INITIAL_TRANSMIT ;
 int WSM_TX_RATE_POLICY_FLAG_TERMINATE_WHEN_FINISHED ;
 int cw1200_debug_tx_cache_miss (struct cw1200_common*) ;
 int memcpy (int ,int ,int) ;
 int pr_debug (char*,size_t) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wsm_set_tx_rate_retry_policy (struct cw1200_common*,struct wsm_set_tx_rate_retry_policy*) ;

__attribute__((used)) static int tx_policy_upload(struct cw1200_common *priv)
{
 struct tx_policy_cache *cache = &priv->tx_policy_cache;
 int i;
 struct wsm_set_tx_rate_retry_policy arg = {
  .num = 0,
 };
 spin_lock_bh(&cache->lock);


 for (i = 0; i < TX_POLICY_CACHE_SIZE; ++i) {
  struct tx_policy *src = &cache->cache[i].policy;
  if (src->retry_count && !src->uploaded) {
   struct wsm_tx_rate_retry_policy *dst =
    &arg.tbl[arg.num];
   dst->index = i;
   dst->short_retries = priv->short_frame_max_tx_count;
   dst->long_retries = priv->long_frame_max_tx_count;

   dst->flags = WSM_TX_RATE_POLICY_FLAG_TERMINATE_WHEN_FINISHED |
    WSM_TX_RATE_POLICY_FLAG_COUNT_INITIAL_TRANSMIT;
   memcpy(dst->rate_count_indices, src->tbl,
          sizeof(dst->rate_count_indices));
   src->uploaded = 1;
   ++arg.num;
  }
 }
 spin_unlock_bh(&cache->lock);
 cw1200_debug_tx_cache_miss(priv);
 pr_debug("[TX policy] Upload %d policies\n", arg.num);
 return wsm_set_tx_rate_retry_policy(priv, &arg);
}
