
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tb_xdomain_lookup {int route; } ;
struct tb_xdomain {int dummy; } ;
struct tb {int root_switch; } ;
typedef int lookup ;


 int memset (struct tb_xdomain_lookup*,int ,int) ;
 struct tb_xdomain* switch_find_xdomain (int ,struct tb_xdomain_lookup*) ;
 struct tb_xdomain* tb_xdomain_get (struct tb_xdomain*) ;

struct tb_xdomain *tb_xdomain_find_by_route(struct tb *tb, u64 route)
{
 struct tb_xdomain_lookup lookup;
 struct tb_xdomain *xd;

 memset(&lookup, 0, sizeof(lookup));
 lookup.route = route;

 xd = switch_find_xdomain(tb->root_switch, &lookup);
 return tb_xdomain_get(xd);
}
