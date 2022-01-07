
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DR ;
 int ni_sort_device_routes (int *) ;
 int route_set_dests_in_order (int *) ;
 int route_set_sources_in_order (int *) ;
 int unittest (int ,char*) ;

void test_ni_sort_device_routes(void)
{

 ni_sort_device_routes(&DR);

 unittest(route_set_dests_in_order(&DR),
   "all route_sets of fake data in order of sig. destination\n");
 unittest(route_set_sources_in_order(&DR),
   "all route_set->src's of fake data in order of sig. source\n");
}
