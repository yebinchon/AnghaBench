
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usage_count; } ;
struct tx_policy_cache_entry {int link; TYPE_1__ policy; } ;
struct tx_policy_cache {int free; } ;


 int list_move (int *,int *) ;

__attribute__((used)) static inline int tx_policy_release(struct tx_policy_cache *cache,
        struct tx_policy_cache_entry *entry)
{
 int ret = --entry->policy.usage_count;
 if (!ret)
  list_move(&entry->link, &cache->free);
 return ret;
}
