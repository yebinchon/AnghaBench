
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ni_route_tables {int dummy; } ;


 scalar_t__ ni_find_route_source (int const,int const,struct ni_route_tables const*) ;

__attribute__((used)) static inline bool route_register_is_valid(const u8 src_sel_reg_value,
        const int dest,
        const struct ni_route_tables *tables)
{
 return ni_find_route_source(src_sel_reg_value, dest, tables) >= 0;
}
