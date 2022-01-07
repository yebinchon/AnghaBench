
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_route_tables {int dummy; } ;
typedef int s8 ;


 int NI_NAMES_BASE ;
 int ni_route_to_register (int,int const,struct ni_route_tables const*) ;
 scalar_t__ route_register_is_valid (int,int const,struct ni_route_tables const*) ;

__attribute__((used)) static inline s8 ni_get_reg_value_roffs(int src, const int dest,
     const struct ni_route_tables *tables,
     const int direct_reg_offset)
{
 if (src < NI_NAMES_BASE) {
  src += direct_reg_offset;




  if (route_register_is_valid(src, dest, tables))
   return src;
  return -1;
 }





 return ni_route_to_register(src, dest, tables);
}
