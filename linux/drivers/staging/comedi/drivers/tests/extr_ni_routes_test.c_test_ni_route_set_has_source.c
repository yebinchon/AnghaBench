
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * routes; } ;


 TYPE_1__ DR ;
 int O (int) ;
 int ni_route_set_has_source (int *,int ) ;
 int unittest (int,char*) ;

void test_ni_route_set_has_source(void)
{
 unittest(!ni_route_set_has_source(&DR.routes[0], O(0)),
   "check for bad source\n");
 unittest(ni_route_set_has_source(&DR.routes[0], O(1)),
   "find first source\n");
 unittest(ni_route_set_has_source(&DR.routes[0], O(5)),
   "find fifth source\n");
 unittest(ni_route_set_has_source(&DR.routes[0], O(9)),
   "find last source\n");
}
