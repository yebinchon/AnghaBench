
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
 unsigned int ni_count_valid_routes (struct ni_route_tables const*) ;

unsigned int ni_get_valid_routes(const struct ni_route_tables *tables,
     unsigned int n_pairs,
     unsigned int *pair_data)
{
 unsigned int n_valid = ni_count_valid_routes(tables);
 int i;

 if (n_pairs == 0 || n_valid == 0)
  return n_valid;

 if (!pair_data)
  return 0;

 n_valid = 0;

 for (i = 0; i < tables->valid_routes->n_route_sets; ++i) {
  const struct ni_route_set *R = &tables->valid_routes->routes[i];
  int j;

  for (j = 0; j < R->n_src; ++j) {
   const int src = R->src[j];
   const int dest = R->dest;
   bool valid = 0;
   const u8 *rv = tables->route_values;

   if (RVi(rv, B(src), B(dest)))

    valid = 1;
   else if (channel_is_rtsi(dest) &&
     (RVi(rv, B(src), B(NI_RGOUT0)) ||
      RVi(rv, B(src), B(NI_RTSI_BRD(0))) ||
      RVi(rv, B(src), B(NI_RTSI_BRD(1))) ||
      RVi(rv, B(src), B(NI_RTSI_BRD(2))) ||
      RVi(rv, B(src), B(NI_RTSI_BRD(3))))) {

    valid = 1;
   }

   if (valid) {
    pair_data[2 * n_valid] = src;
    pair_data[2 * n_valid + 1] = dest;
    ++n_valid;
   }

   if (n_valid >= n_pairs)
    return n_valid;
  }
 }
 return n_valid;
}
