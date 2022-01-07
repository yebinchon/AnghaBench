
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct tb_xdomain {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct tb_switch {int rpm; TYPE_2__ dev; int authorized; } ;
struct tb {int dummy; } ;
struct TYPE_3__ {int flags; scalar_t__ packet_id; } ;
struct icm_tr_event_device_connected {int link_info; int connection_id; scalar_t__ ep_name; int ep_uuid; TYPE_1__ hdr; int route_lo; int route_hi; } ;
struct icm_pkg_header {int dummy; } ;
typedef enum tb_security_level { ____Placeholder_tb_security_level } tb_security_level ;


 int ICM_FLAGS_SLEVEL_MASK ;
 int ICM_FLAGS_SLEVEL_SHIFT ;
 int ICM_LINK_INFO_APPROVED ;
 int ICM_LINK_INFO_BOOT ;
 int ICM_LINK_INFO_REJECTED ;
 int IS_ERR (struct tb_switch*) ;
 struct tb_switch* add_switch (struct tb_switch*,scalar_t__,int *,int const*,int,int ,int ,int ,int ,int,int,int) ;
 scalar_t__ get_parent_route (scalar_t__) ;
 scalar_t__ get_route (int ,int ) ;
 int icm_postpone_rescan (struct tb*) ;
 int remove_switch (struct tb_switch*) ;
 int remove_xdomain (struct tb_xdomain*) ;
 int tb_err (struct tb*,char*,scalar_t__) ;
 int tb_info (struct tb*,char*,scalar_t__) ;
 scalar_t__ tb_route (struct tb_switch*) ;
 struct tb_switch* tb_switch_find_by_route (struct tb*,scalar_t__) ;
 struct tb_switch* tb_switch_find_by_uuid (struct tb*,int *) ;
 int tb_switch_put (struct tb_switch*) ;
 struct tb_switch* tb_to_switch (int ) ;
 struct tb_xdomain* tb_xdomain_find_by_route (struct tb*,scalar_t__) ;
 int tb_xdomain_put (struct tb_xdomain*) ;
 int update_switch (struct tb_switch*,struct tb_switch*,scalar_t__,int ,int ,int ,int ,int) ;

__attribute__((used)) static void
__icm_tr_device_connected(struct tb *tb, const struct icm_pkg_header *hdr,
     bool force_rtd3)
{
 const struct icm_tr_event_device_connected *pkg =
  (const struct icm_tr_event_device_connected *)hdr;
 enum tb_security_level security_level;
 struct tb_switch *sw, *parent_sw;
 struct tb_xdomain *xd;
 bool authorized, boot;
 u64 route;

 icm_postpone_rescan(tb);






 if (pkg->hdr.packet_id)
  return;

 route = get_route(pkg->route_hi, pkg->route_lo);
 authorized = pkg->link_info & ICM_LINK_INFO_APPROVED;
 security_level = (pkg->hdr.flags & ICM_FLAGS_SLEVEL_MASK) >>
    ICM_FLAGS_SLEVEL_SHIFT;
 boot = pkg->link_info & ICM_LINK_INFO_BOOT;

 if (pkg->link_info & ICM_LINK_INFO_REJECTED) {
  tb_info(tb, "switch at %llx was rejected by ICM firmware because topology limit exceeded\n",
   route);
  return;
 }

 sw = tb_switch_find_by_uuid(tb, &pkg->ep_uuid);
 if (sw) {

  if (tb_route(sw) == route && !!sw->authorized == authorized) {
   parent_sw = tb_to_switch(sw->dev.parent);
   update_switch(parent_sw, sw, route, pkg->connection_id,
          0, 0, 0, boot);
   tb_switch_put(sw);
   return;
  }

  remove_switch(sw);
  tb_switch_put(sw);
 }


 sw = tb_switch_find_by_route(tb, route);
 if (sw) {
  remove_switch(sw);
  tb_switch_put(sw);
 }


 xd = tb_xdomain_find_by_route(tb, route);
 if (xd) {
  remove_xdomain(xd);
  tb_xdomain_put(xd);
 }

 parent_sw = tb_switch_find_by_route(tb, get_parent_route(route));
 if (!parent_sw) {
  tb_err(tb, "failed to find parent switch for %llx\n", route);
  return;
 }

 sw = add_switch(parent_sw, route, &pkg->ep_uuid, (const u8 *)pkg->ep_name,
   sizeof(pkg->ep_name), pkg->connection_id, 0, 0, 0,
   security_level, authorized, boot);
 if (!IS_ERR(sw) && force_rtd3)
  sw->rpm = 1;

 tb_switch_put(parent_sw);
}
