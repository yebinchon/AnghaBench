
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply {scalar_t__ last_update; scalar_t__ cache_invalid; } ;


 int cache_time ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ time_is_after_jiffies (scalar_t__) ;

__attribute__((used)) static int is_cache_valid(struct gb_power_supply *gbpsy)
{

 if (gbpsy->cache_invalid) {
  gbpsy->cache_invalid = 0;
  return 0;
 }

 if (gbpsy->last_update &&
     time_is_after_jiffies(gbpsy->last_update +
      msecs_to_jiffies(cache_time)))
  return 1;

 return 0;
}
