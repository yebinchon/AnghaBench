
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_queue_stats {int * link_map_cache; } ;


 int kfree (int *) ;

void cw1200_queue_stats_deinit(struct cw1200_queue_stats *stats)
{
 kfree(stats->link_map_cache);
 stats->link_map_cache = ((void*)0);
}
