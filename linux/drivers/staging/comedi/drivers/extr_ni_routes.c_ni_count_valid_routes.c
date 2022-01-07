
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ni_route_tables {int * route_values; TYPE_1__* valid_routes; } ;
struct ni_route_set {int n_src; int* src; int dest; } ;
struct TYPE_2__ {int n_route_sets; struct ni_route_set* routes; } ;


 int B (int const) ;
 int const NI_RGOUT0 ;
 int const NI_RTSI_BRD (int) ;
 scalar_t__ RVi (int const*,int ,int ) ;
 scalar_t__ channel_is_rtsi (int const) ;

unsigned int ni_count_valid_routes(const struct ni_route_tables *tables)
{
 int total = 0;
 int i;

 for (i = 0; i < tables->valid_routes->n_route_sets; ++i) {
  const struct ni_route_set *R = &tables->valid_routes->routes[i];
  int j;

  for (j = 0; j < R->n_src; ++j) {
   const int src = R->src[j];
   const int dest = R->dest;
   const u8 *rv = tables->route_values;

   if (RVi(rv, B(src), B(dest)))

    ++total;
   else if (channel_is_rtsi(dest) &&
     (RVi(rv, B(src), B(NI_RGOUT0)) ||
      RVi(rv, B(src), B(NI_RTSI_BRD(0))) ||
      RVi(rv, B(src), B(NI_RTSI_BRD(1))) ||
      RVi(rv, B(src), B(NI_RTSI_BRD(2))) ||
      RVi(rv, B(src), B(NI_RTSI_BRD(3))))) {
    ++total;
   }
  }
 }
 return total;
}
