
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tb_switch {int dummy; } ;
struct tb {int dummy; } ;
struct icm_tr_event_device_disconnected {int route_lo; int route_hi; } ;
struct icm_pkg_header {int dummy; } ;


 int get_route (int ,int ) ;
 int remove_switch (struct tb_switch*) ;
 struct tb_switch* tb_switch_find_by_route (struct tb*,int ) ;
 int tb_switch_put (struct tb_switch*) ;
 int tb_warn (struct tb*,char*,int ) ;

__attribute__((used)) static void
icm_tr_device_disconnected(struct tb *tb, const struct icm_pkg_header *hdr)
{
 const struct icm_tr_event_device_disconnected *pkg =
  (const struct icm_tr_event_device_disconnected *)hdr;
 struct tb_switch *sw;
 u64 route;

 route = get_route(pkg->route_hi, pkg->route_lo);

 sw = tb_switch_find_by_route(tb, route);
 if (!sw) {
  tb_warn(tb, "no switch exists at %llx, ignoring\n", route);
  return;
 }

 remove_switch(sw);
 tb_switch_put(sw);
}
