
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ usage_count; } ;
struct tx_policy_cache_entry {TYPE_1__ policy; int link; } ;
struct tx_policy_cache {int lock; int free; struct tx_policy_cache_entry* cache; } ;
struct cw1200_common {struct tx_policy_cache tx_policy_cache; } ;


 int TX_POLICY_CACHE_SIZE ;
 scalar_t__ WARN_ON (scalar_t__) ;
 int cw1200_tx_queues_lock (struct cw1200_common*) ;
 int cw1200_tx_queues_unlock (struct cw1200_common*) ;
 int list_empty (int *) ;
 int list_move (int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void tx_policy_clean(struct cw1200_common *priv)
{
 int idx, locked;
 struct tx_policy_cache *cache = &priv->tx_policy_cache;
 struct tx_policy_cache_entry *entry;

 cw1200_tx_queues_lock(priv);
 spin_lock_bh(&cache->lock);
 locked = list_empty(&cache->free);

 for (idx = 0; idx < TX_POLICY_CACHE_SIZE; idx++) {
  entry = &cache->cache[idx];



  if (WARN_ON(entry->policy.usage_count)) {
   entry->policy.usage_count = 0;
   list_move(&entry->link, &cache->free);
  }
  memset(&entry->policy, 0, sizeof(entry->policy));
 }
 if (locked)
  cw1200_tx_queues_unlock(priv);

 cw1200_tx_queues_unlock(priv);
 spin_unlock_bh(&cache->lock);
}
