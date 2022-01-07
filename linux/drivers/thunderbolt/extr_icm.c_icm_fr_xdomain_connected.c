
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct tb_xdomain {scalar_t__ depth; int route; } ;
struct tb_switch {int dummy; } ;
struct tb {int dummy; } ;
struct icm_pkg_header {int dummy; } ;
struct icm_fr_event_xdomain_connected {scalar_t__ link_info; int remote_uuid; int local_uuid; int local_route_lo; int local_route_hi; } ;


 scalar_t__ ICM_LINK_INFO_DEPTH_MASK ;
 scalar_t__ ICM_LINK_INFO_DEPTH_SHIFT ;
 scalar_t__ ICM_LINK_INFO_LINK_MASK ;
 scalar_t__ ICM_MAX_LINK ;
 scalar_t__ TB_SWITCH_MAX_DEPTH ;
 int add_xdomain (struct tb_switch*,int ,int *,int *,scalar_t__,scalar_t__) ;
 scalar_t__ dual_link_from_link (scalar_t__) ;
 int get_route (int ,int ) ;
 scalar_t__ phy_port_from_route (int ,scalar_t__) ;
 int remove_switch (struct tb_switch*) ;
 int remove_xdomain (struct tb_xdomain*) ;
 struct tb_switch* tb_switch_find_by_link_depth (struct tb*,scalar_t__,scalar_t__) ;
 struct tb_switch* tb_switch_find_by_route (struct tb*,int ) ;
 int tb_switch_put (struct tb_switch*) ;
 int tb_warn (struct tb*,char*,scalar_t__,scalar_t__) ;
 struct tb_xdomain* tb_xdomain_find_by_link_depth (struct tb*,scalar_t__,scalar_t__) ;
 struct tb_xdomain* tb_xdomain_find_by_uuid (struct tb*,int *) ;
 int tb_xdomain_put (struct tb_xdomain*) ;
 int update_xdomain (struct tb_xdomain*,int ,scalar_t__) ;

__attribute__((used)) static void
icm_fr_xdomain_connected(struct tb *tb, const struct icm_pkg_header *hdr)
{
 const struct icm_fr_event_xdomain_connected *pkg =
  (const struct icm_fr_event_xdomain_connected *)hdr;
 struct tb_xdomain *xd;
 struct tb_switch *sw;
 u8 link, depth;
 u64 route;

 link = pkg->link_info & ICM_LINK_INFO_LINK_MASK;
 depth = (pkg->link_info & ICM_LINK_INFO_DEPTH_MASK) >>
  ICM_LINK_INFO_DEPTH_SHIFT;

 if (link > ICM_MAX_LINK || depth > TB_SWITCH_MAX_DEPTH) {
  tb_warn(tb, "invalid topology %u.%u, ignoring\n", link, depth);
  return;
 }

 route = get_route(pkg->local_route_hi, pkg->local_route_lo);

 xd = tb_xdomain_find_by_uuid(tb, &pkg->remote_uuid);
 if (xd) {
  u8 xd_phy_port, phy_port;

  xd_phy_port = phy_port_from_route(xd->route, xd->depth);
  phy_port = phy_port_from_route(route, depth);

  if (xd->depth == depth && xd_phy_port == phy_port) {
   update_xdomain(xd, route, link);
   tb_xdomain_put(xd);
   return;
  }







  remove_xdomain(xd);
  tb_xdomain_put(xd);
 }






 xd = tb_xdomain_find_by_link_depth(tb, link, depth);
 if (!xd) {
  u8 dual_link;

  dual_link = dual_link_from_link(link);
  if (dual_link)
   xd = tb_xdomain_find_by_link_depth(tb, dual_link,
          depth);
 }
 if (xd) {
  remove_xdomain(xd);
  tb_xdomain_put(xd);
 }






 sw = tb_switch_find_by_route(tb, route);
 if (sw) {
  remove_switch(sw);
  tb_switch_put(sw);
 }

 sw = tb_switch_find_by_link_depth(tb, link, depth);
 if (!sw) {
  tb_warn(tb, "no switch exists at %u.%u, ignoring\n", link,
   depth);
  return;
 }

 add_xdomain(sw, route, &pkg->local_uuid, &pkg->remote_uuid, link,
      depth);
 tb_switch_put(sw);
}
