
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int TB_ROUTE_SHIFT ;
 int tb_route_length (int) ;

__attribute__((used)) static inline u64 get_parent_route(u64 route)
{
 int depth = tb_route_length(route);
 return depth ? route & ~(0xffULL << (depth - 1) * TB_ROUTE_SHIFT) : 0;
}
