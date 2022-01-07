
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tb_cfg_header {int route_hi; int route_lo; } ;


 int WARN_ON (int) ;
 int tb_cfg_get_route (struct tb_cfg_header*) ;

__attribute__((used)) static inline struct tb_cfg_header tb_cfg_make_header(u64 route)
{
 struct tb_cfg_header header = {
  .route_hi = route >> 32,
  .route_lo = route,
 };

 WARN_ON(tb_cfg_get_route(&header) != route);
 return header;
}
