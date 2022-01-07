
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_policy_cache {int free; TYPE_1__* cache; int used; int lock; } ;
struct cw1200_common {struct tx_policy_cache tx_policy_cache; } ;
struct TYPE_2__ {int link; } ;


 int INIT_LIST_HEAD (int *) ;
 int TX_POLICY_CACHE_SIZE ;
 int list_add (int *,int *) ;
 int memset (struct tx_policy_cache*,int ,int) ;
 int spin_lock_init (int *) ;

void tx_policy_init(struct cw1200_common *priv)
{
 struct tx_policy_cache *cache = &priv->tx_policy_cache;
 int i;

 memset(cache, 0, sizeof(*cache));

 spin_lock_init(&cache->lock);
 INIT_LIST_HEAD(&cache->used);
 INIT_LIST_HEAD(&cache->free);

 for (i = 0; i < TX_POLICY_CACHE_SIZE; ++i)
  list_add(&cache->cache[i].link, &cache->free);
}
