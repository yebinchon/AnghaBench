
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ni_route_tables {int route_values; } ;


 int B (int) ;
 int EINVAL ;
 int NI_NAMES_BASE ;
 int NI_NUM_NAMES ;
 scalar_t__ RVi (int ,int,int) ;
 scalar_t__ V (int const) ;

int ni_find_route_source(const u8 src_sel_reg_value, int dest,
    const struct ni_route_tables *tables)
{
 int src;

 dest = B(dest);

 if (dest < 0 || dest >= NI_NUM_NAMES)
  return -EINVAL;
 for (src = 0; src < NI_NUM_NAMES; ++src)
  if (RVi(tables->route_values, src, dest) ==
      V(src_sel_reg_value))
   return src + NI_NAMES_BASE;
 return -EINVAL;
}
