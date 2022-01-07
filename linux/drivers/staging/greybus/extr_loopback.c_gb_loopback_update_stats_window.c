
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct gb_loopback_stats {scalar_t__ min; scalar_t__ max; int count; int sum; } ;


 int do_div (scalar_t__,scalar_t__) ;

__attribute__((used)) static void gb_loopback_update_stats_window(struct gb_loopback_stats *stats,
         u64 val, u32 count)
{
 stats->sum += val;
 stats->count += count;

 do_div(val, count);
 if (stats->min > val)
  stats->min = val;
 if (stats->max < val)
  stats->max = val;
}
