
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_device_routes {int n_route_sets; TYPE_1__* routes; } ;
struct TYPE_2__ {int dest; } ;


 int NI_NAMES_BASE ;

__attribute__((used)) static bool route_set_dests_in_order(const struct ni_device_routes *devroutes)
{
 int i;
 int last = NI_NAMES_BASE - 1;

 for (i = 0; i < devroutes->n_route_sets; ++i) {
  if (last >= devroutes->routes[i].dest)
   return 0;
  last = devroutes->routes[i].dest;
 }
 return 1;
}
