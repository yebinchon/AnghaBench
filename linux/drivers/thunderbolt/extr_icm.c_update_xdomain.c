
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct tb_xdomain {int is_unplugged; int route; int link; } ;



__attribute__((used)) static void update_xdomain(struct tb_xdomain *xd, u64 route, u8 link)
{
 xd->link = link;
 xd->route = route;
 xd->is_unplugged = 0;
}
