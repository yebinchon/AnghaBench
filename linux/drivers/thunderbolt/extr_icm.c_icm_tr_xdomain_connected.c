
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct tb_xdomain {scalar_t__ route; } ;
struct tb_switch {int dummy; } ;
struct tb {int root_switch; } ;
struct icm_tr_event_xdomain_connected {int remote_uuid; int local_uuid; int local_route_lo; int local_route_hi; } ;
struct icm_pkg_header {int dummy; } ;


 int add_xdomain (struct tb_switch*,scalar_t__,int *,int *,int ,int ) ;
 scalar_t__ get_parent_route (scalar_t__) ;
 scalar_t__ get_route (int ,int ) ;
 int remove_switch (struct tb_switch*) ;
 int remove_xdomain (struct tb_xdomain*) ;
 struct tb_switch* tb_switch_find_by_route (struct tb*,scalar_t__) ;
 int tb_switch_put (struct tb_switch*) ;
 int tb_warn (struct tb*,char*,scalar_t__) ;
 struct tb_xdomain* tb_xdomain_find_by_route (struct tb*,scalar_t__) ;
 struct tb_xdomain* tb_xdomain_find_by_uuid (struct tb*,int *) ;
 int tb_xdomain_put (struct tb_xdomain*) ;
 int update_xdomain (struct tb_xdomain*,scalar_t__,int ) ;

__attribute__((used)) static void
icm_tr_xdomain_connected(struct tb *tb, const struct icm_pkg_header *hdr)
{
 const struct icm_tr_event_xdomain_connected *pkg =
  (const struct icm_tr_event_xdomain_connected *)hdr;
 struct tb_xdomain *xd;
 struct tb_switch *sw;
 u64 route;

 if (!tb->root_switch)
  return;

 route = get_route(pkg->local_route_hi, pkg->local_route_lo);

 xd = tb_xdomain_find_by_uuid(tb, &pkg->remote_uuid);
 if (xd) {
  if (xd->route == route) {
   update_xdomain(xd, route, 0);
   tb_xdomain_put(xd);
   return;
  }

  remove_xdomain(xd);
  tb_xdomain_put(xd);
 }


 xd = tb_xdomain_find_by_route(tb, route);
 if (xd) {
  remove_xdomain(xd);
  tb_xdomain_put(xd);
 }






 sw = tb_switch_find_by_route(tb, route);
 if (sw) {
  remove_switch(sw);
  tb_switch_put(sw);
 }

 sw = tb_switch_find_by_route(tb, get_parent_route(route));
 if (!sw) {
  tb_warn(tb, "no switch exists at %llx, ignoring\n", route);
  return;
 }

 add_xdomain(sw, route, &pkg->local_uuid, &pkg->remote_uuid, 0, 0);
 tb_switch_put(sw);
}
