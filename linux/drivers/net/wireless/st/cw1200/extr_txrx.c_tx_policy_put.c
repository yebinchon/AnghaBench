
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_policy_cache {int lock; int * cache; int free; } ;
struct cw1200_common {struct tx_policy_cache tx_policy_cache; } ;


 int cw1200_tx_queues_unlock (struct cw1200_common*) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tx_policy_release (struct tx_policy_cache*,int *) ;

__attribute__((used)) static void tx_policy_put(struct cw1200_common *priv, int idx)
{
 int usage, locked;
 struct tx_policy_cache *cache = &priv->tx_policy_cache;

 spin_lock_bh(&cache->lock);
 locked = list_empty(&cache->free);
 usage = tx_policy_release(cache, &cache->cache[idx]);
 if (locked && !usage) {

  cw1200_tx_queues_unlock(priv);
 }
 spin_unlock_bh(&cache->lock);
}
