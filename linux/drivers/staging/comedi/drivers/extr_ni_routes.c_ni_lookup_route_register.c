
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_route_tables {int route_values; } ;
typedef int s8 ;


 int B (int) ;
 int EINVAL ;
 int NI_NUM_NAMES ;
 int RVi (int ,int,int) ;
 int UNMARK (int ) ;

s8 ni_lookup_route_register(int src, int dest,
       const struct ni_route_tables *tables)
{
 s8 regval;





 src = B(src);
 dest = B(dest);
 if (src < 0 || src >= NI_NUM_NAMES || dest < 0 || dest >= NI_NUM_NAMES)
  return -EINVAL;
 regval = RVi(tables->route_values, src, dest);
 if (!regval)
  return -EINVAL;

 return UNMARK(regval);
}
