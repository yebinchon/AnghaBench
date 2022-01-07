
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cw1200_queue_stats {scalar_t__ num_queued; int map_capacity; int lock; scalar_t__* link_map_cache; } ;


 int BIT (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

bool cw1200_queue_stats_is_empty(struct cw1200_queue_stats *stats,
     u32 link_id_map)
{
 bool empty = 1;

 spin_lock_bh(&stats->lock);
 if (link_id_map == (u32)-1) {
  empty = stats->num_queued == 0;
 } else {
  int i;
  for (i = 0; i < stats->map_capacity; ++i) {
   if (link_id_map & BIT(i)) {
    if (stats->link_map_cache[i]) {
     empty = 0;
     break;
    }
   }
  }
 }
 spin_unlock_bh(&stats->lock);

 return empty;
}
