
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int tb_phy_port_from_link (int) ;

__attribute__((used)) static inline u8 phy_port_from_route(u64 route, u8 depth)
{
 u8 link;

 link = depth ? route >> ((depth - 1) * 8) : route;
 return tb_phy_port_from_link(link);
}
