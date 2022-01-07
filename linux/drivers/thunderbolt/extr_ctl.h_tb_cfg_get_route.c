
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tb_cfg_header {int route_lo; scalar_t__ route_hi; } ;



__attribute__((used)) static inline u64 tb_cfg_get_route(const struct tb_cfg_header *header)
{
 return (u64) header->route_hi << 32 | header->route_lo;
}
