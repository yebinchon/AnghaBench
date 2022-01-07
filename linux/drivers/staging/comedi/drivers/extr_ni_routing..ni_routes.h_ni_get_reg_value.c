
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_route_tables {int dummy; } ;


 int ni_get_reg_value_roffs (int const,int const,struct ni_route_tables const*,int ) ;

__attribute__((used)) static inline int ni_get_reg_value(const int src, const int dest,
       const struct ni_route_tables *tables)
{
 return ni_get_reg_value_roffs(src, dest, tables, 0);
}
