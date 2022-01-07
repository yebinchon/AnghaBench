
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_device_routes {int n_route_sets; TYPE_1__* routes; } ;
struct TYPE_2__ {int n_src; int* src; } ;


 int NI_NAMES_BASE ;

bool route_set_sources_in_order(const struct ni_device_routes *devroutes)
{
 int i;

 for (i = 0; i < devroutes->n_route_sets; ++i) {
  int j;
  int last = NI_NAMES_BASE - 1;

  for (j = 0; j < devroutes->routes[i].n_src; ++j) {
   if (last >= devroutes->routes[i].src[j])
    return 0;
   last = devroutes->routes[i].src[j];
  }
 }
 return 1;
}
