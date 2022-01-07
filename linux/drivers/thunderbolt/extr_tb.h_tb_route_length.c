
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int TB_ROUTE_SHIFT ;
 int fls64 (int ) ;

__attribute__((used)) static inline int tb_route_length(u64 route)
{
 return (fls64(route) + TB_ROUTE_SHIFT - 1) / TB_ROUTE_SHIFT;
}
