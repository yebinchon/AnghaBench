
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
struct tb_xdomain {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct tb_switch {scalar_t__ link; scalar_t__ depth; int authorized; TYPE_2__ dev; } ;
struct tb {int dummy; } ;
struct icm_pkg_header {int dummy; } ;
struct TYPE_3__ {int flags; } ;
struct icm_fr_event_device_connected {scalar_t__ link_info; int connection_key; int connection_id; scalar_t__ ep_name; int ep_uuid; TYPE_1__ hdr; } ;
struct icm {int (* get_route ) (struct tb*,scalar_t__,scalar_t__,int *) ;} ;
typedef enum tb_security_level { ____Placeholder_tb_security_level } tb_security_level ;


 int ICM_FLAGS_SLEVEL_MASK ;
 int ICM_FLAGS_SLEVEL_SHIFT ;
 int ICM_LINK_INFO_APPROVED ;
 int ICM_LINK_INFO_BOOT ;
 scalar_t__ ICM_LINK_INFO_DEPTH_MASK ;
 scalar_t__ ICM_LINK_INFO_DEPTH_SHIFT ;
 scalar_t__ ICM_LINK_INFO_LINK_MASK ;
 int ICM_LINK_INFO_REJECTED ;
 int add_switch (struct tb_switch*,int ,int *,scalar_t__ const*,int,int ,int ,scalar_t__,scalar_t__,int,int,int) ;
 scalar_t__ dual_link_from_link (scalar_t__) ;
 int icm_postpone_rescan (struct tb*) ;
 int remove_switch (struct tb_switch*) ;
 int remove_xdomain (struct tb_xdomain*) ;
 int stub1 (struct tb*,scalar_t__,scalar_t__,int *) ;
 int stub2 (struct tb*,scalar_t__,scalar_t__,int *) ;
 int tb_err (struct tb*,char*,scalar_t__,scalar_t__) ;
 int tb_info (struct tb*,char*,scalar_t__,scalar_t__) ;
 scalar_t__ tb_phy_port_from_link (scalar_t__) ;
 struct icm* tb_priv (struct tb*) ;
 int tb_route (struct tb_switch*) ;
 struct tb_switch* tb_switch_find_by_link_depth (struct tb*,scalar_t__,scalar_t__) ;
 struct tb_switch* tb_switch_find_by_uuid (struct tb*,int *) ;
 int tb_switch_put (struct tb_switch*) ;
 struct tb_switch* tb_to_switch (int ) ;
 struct tb_xdomain* tb_xdomain_find_by_link_depth (struct tb*,scalar_t__,scalar_t__) ;
 int tb_xdomain_put (struct tb_xdomain*) ;
 int update_switch (struct tb_switch*,struct tb_switch*,int ,int ,int ,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void
icm_fr_device_connected(struct tb *tb, const struct icm_pkg_header *hdr)
{
 const struct icm_fr_event_device_connected *pkg =
  (const struct icm_fr_event_device_connected *)hdr;
 enum tb_security_level security_level;
 struct tb_switch *sw, *parent_sw;
 struct icm *icm = tb_priv(tb);
 bool authorized = 0;
 struct tb_xdomain *xd;
 u8 link, depth;
 bool boot;
 u64 route;
 int ret;

 icm_postpone_rescan(tb);

 link = pkg->link_info & ICM_LINK_INFO_LINK_MASK;
 depth = (pkg->link_info & ICM_LINK_INFO_DEPTH_MASK) >>
  ICM_LINK_INFO_DEPTH_SHIFT;
 authorized = pkg->link_info & ICM_LINK_INFO_APPROVED;
 security_level = (pkg->hdr.flags & ICM_FLAGS_SLEVEL_MASK) >>
    ICM_FLAGS_SLEVEL_SHIFT;
 boot = pkg->link_info & ICM_LINK_INFO_BOOT;

 if (pkg->link_info & ICM_LINK_INFO_REJECTED) {
  tb_info(tb, "switch at %u.%u was rejected by ICM firmware because topology limit exceeded\n",
   link, depth);
  return;
 }

 sw = tb_switch_find_by_uuid(tb, &pkg->ep_uuid);
 if (sw) {
  u8 phy_port, sw_phy_port;

  parent_sw = tb_to_switch(sw->dev.parent);
  sw_phy_port = tb_phy_port_from_link(sw->link);
  phy_port = tb_phy_port_from_link(link);
  if (sw->depth == depth && sw_phy_port == phy_port &&
      !!sw->authorized == authorized) {




   if (sw->link != link) {
    ret = icm->get_route(tb, link, depth, &route);
    if (ret) {
     tb_err(tb, "failed to update route string for switch at %u.%u\n",
            link, depth);
     tb_switch_put(sw);
     return;
    }
   } else {
    route = tb_route(sw);
   }

   update_switch(parent_sw, sw, route, pkg->connection_id,
          pkg->connection_key, link, depth, boot);
   tb_switch_put(sw);
   return;
  }






  remove_switch(sw);
  tb_switch_put(sw);
 }







 sw = tb_switch_find_by_link_depth(tb, link, depth);
 if (!sw) {
  u8 dual_link;

  dual_link = dual_link_from_link(link);
  if (dual_link)
   sw = tb_switch_find_by_link_depth(tb, dual_link, depth);
 }
 if (sw) {
  remove_switch(sw);
  tb_switch_put(sw);
 }


 xd = tb_xdomain_find_by_link_depth(tb, link, depth);
 if (xd) {
  remove_xdomain(xd);
  tb_xdomain_put(xd);
 }

 parent_sw = tb_switch_find_by_link_depth(tb, link, depth - 1);
 if (!parent_sw) {
  tb_err(tb, "failed to find parent switch for %u.%u\n",
         link, depth);
  return;
 }

 ret = icm->get_route(tb, link, depth, &route);
 if (ret) {
  tb_err(tb, "failed to find route string for switch at %u.%u\n",
         link, depth);
  tb_switch_put(parent_sw);
  return;
 }

 add_switch(parent_sw, route, &pkg->ep_uuid, (const u8 *)pkg->ep_name,
     sizeof(pkg->ep_name), pkg->connection_id,
     pkg->connection_key, link, depth, security_level,
     authorized, boot);

 tb_switch_put(parent_sw);
}
