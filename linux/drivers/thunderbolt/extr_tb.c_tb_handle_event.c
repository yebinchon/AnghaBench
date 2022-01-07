
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tb {int ctl; } ;
struct cfg_event_pkg {int unplug; int port; int header; } ;
typedef enum tb_cfg_pkg_type { ____Placeholder_tb_cfg_pkg_type } tb_cfg_pkg_type ;


 int TB_CFG_ERROR_ACK_PLUG_EVENT ;
 int TB_CFG_PKG_EVENT ;
 scalar_t__ tb_cfg_error (int ,int ,int ,int ) ;
 int tb_cfg_get_route (int *) ;
 int tb_queue_hotplug (struct tb*,int ,int ,int ) ;
 int tb_warn (struct tb*,char*,int,...) ;

__attribute__((used)) static void tb_handle_event(struct tb *tb, enum tb_cfg_pkg_type type,
       const void *buf, size_t size)
{
 const struct cfg_event_pkg *pkg = buf;
 u64 route;

 if (type != TB_CFG_PKG_EVENT) {
  tb_warn(tb, "unexpected event %#x, ignoring\n", type);
  return;
 }

 route = tb_cfg_get_route(&pkg->header);

 if (tb_cfg_error(tb->ctl, route, pkg->port,
    TB_CFG_ERROR_ACK_PLUG_EVENT)) {
  tb_warn(tb, "could not ack plug event on %llx:%x\n", route,
   pkg->port);
 }

 tb_queue_hotplug(tb, route, pkg->port, pkg->unplug);
}
