
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usage_count; } ;
struct tx_policy_cache_entry {int link; TYPE_1__ policy; } ;
struct tx_policy_cache {int used; } ;


 int list_move (int *,int *) ;

__attribute__((used)) static inline void tx_policy_use(struct tx_policy_cache *cache,
     struct tx_policy_cache_entry *entry)
{
 ++entry->policy.usage_count;
 list_move(&entry->link, &cache->used);
}
