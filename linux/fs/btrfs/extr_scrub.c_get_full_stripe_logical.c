
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_block_group_cache {int full_stripe_len; TYPE_1__ key; } ;


 int U32_MAX ;
 int WARN_ON_ONCE (int) ;
 int div64_u64 (scalar_t__,int) ;

__attribute__((used)) static u64 get_full_stripe_logical(struct btrfs_block_group_cache *cache,
       u64 bytenr)
{
 u64 ret;





 WARN_ON_ONCE(cache->full_stripe_len >= U32_MAX);





 ret = div64_u64(bytenr - cache->key.objectid, cache->full_stripe_len) *
  cache->full_stripe_len + cache->key.objectid;
 return ret;
}
