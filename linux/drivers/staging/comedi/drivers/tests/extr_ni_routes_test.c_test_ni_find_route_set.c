
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int n_route_sets; TYPE_1__* routes; } ;
struct TYPE_4__ {int dest; } ;


 TYPE_2__ DR ;
 int bad_dest ;
 int dest0 ;
 int desti ;
 size_t ith_dest_index ;
 TYPE_1__* ni_find_route_set (int ,TYPE_2__*) ;
 int no_val_dest ;
 size_t no_val_index ;
 int unittest (int,char*) ;

void test_ni_find_route_set(void)
{
 unittest(!ni_find_route_set(bad_dest, &DR),
   "check for nonexistent route_set\n");
 unittest(ni_find_route_set(dest0, &DR) == &DR.routes[0],
   "find first route_set\n");
 unittest(ni_find_route_set(desti, &DR) == &DR.routes[ith_dest_index],
   "find ith route_set\n");
 unittest(ni_find_route_set(no_val_dest, &DR) ==
   &DR.routes[no_val_index],
   "find no_val route_set in spite of missing values\n");
 unittest(ni_find_route_set(DR.routes[DR.n_route_sets - 1].dest, &DR) ==
   &DR.routes[DR.n_route_sets - 1],
   "find last route_set\n");
}
