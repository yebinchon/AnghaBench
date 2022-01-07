
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone_entry {int * free_table; int * l2p_table; scalar_t__ unused_blk_cnt; scalar_t__ get_index; scalar_t__ set_index; scalar_t__ build_flag; } ;


 int vfree (int *) ;

__attribute__((used)) static inline void free_zone(struct zone_entry *zone)
{
 if (!zone)
  return;

 zone->build_flag = 0;
 zone->set_index = 0;
 zone->get_index = 0;
 zone->unused_blk_cnt = 0;
 vfree(zone->l2p_table);
 zone->l2p_table = ((void*)0);
 vfree(zone->free_table);
 zone->free_table = ((void*)0);
}
