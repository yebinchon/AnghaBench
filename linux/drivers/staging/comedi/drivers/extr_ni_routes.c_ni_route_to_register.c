
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ni_route_tables {int * route_values; int valid_routes; } ;
struct ni_route_set {int dummy; } ;
typedef int s8 ;


 int B (int const) ;
 int BIT (int) ;
 int const NI_RGOUT0 ;
 int const NI_RTSI_BRD (int) ;
 int RVi (int const*,int ,int ) ;
 int UNMARK (int) ;
 scalar_t__ channel_is_rtsi (int const) ;
 struct ni_route_set* ni_find_route_set (int const,int ) ;
 int ni_route_set_has_source (struct ni_route_set const*,int const) ;

s8 ni_route_to_register(const int src, const int dest,
   const struct ni_route_tables *tables)
{
 const struct ni_route_set *routes =
  ni_find_route_set(dest, tables->valid_routes);
 const u8 *rv;
 s8 regval;


 if (!routes)
  return -1;

 if (!ni_route_set_has_source(routes, src))
  return -1;





 rv = tables->route_values;
 regval = RVi(rv, B(src), B(dest));





 if (!regval && channel_is_rtsi(dest)) {
  regval = RVi(rv, B(src), B(NI_RGOUT0));
  if (!regval && (RVi(rv, B(src), B(NI_RTSI_BRD(0))) ||
    RVi(rv, B(src), B(NI_RTSI_BRD(1))) ||
    RVi(rv, B(src), B(NI_RTSI_BRD(2))) ||
    RVi(rv, B(src), B(NI_RTSI_BRD(3)))))
   regval = BIT(6);
 }

 if (!regval)
  return -1;

 return UNMARK(regval);
}
