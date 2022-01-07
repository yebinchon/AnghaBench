
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_6__ {int max_port_number; } ;
struct tb_switch {scalar_t__ uid; struct tb_port* ports; TYPE_2__ config; TYPE_1__* tb; } ;
struct tb_port {TYPE_4__* remote; TYPE_3__* xdomain; } ;
struct TYPE_8__ {struct tb_switch* sw; } ;
struct TYPE_7__ {int is_unplugged; } ;
struct TYPE_5__ {int ctl; } ;


 int ENODEV ;
 int TB_CFG_SWITCH ;
 int tb_cfg_get_upstream_port (int ,scalar_t__) ;
 int tb_drom_read_uid_only (struct tb_switch*,scalar_t__*) ;
 int tb_lc_configure_link (struct tb_switch*) ;
 int tb_plug_events_active (struct tb_switch*,int) ;
 scalar_t__ tb_port_has_remote (struct tb_port*) ;
 int tb_port_warn (struct tb_port*,char*) ;
 scalar_t__ tb_route (struct tb_switch*) ;
 int tb_sw_dbg (struct tb_switch*,char*) ;
 int tb_sw_info (struct tb_switch*,char*,...) ;
 int tb_sw_set_unplugged (struct tb_switch*) ;
 int tb_sw_warn (struct tb_switch*,char*) ;
 int tb_sw_write (struct tb_switch*,int *,int ,int,int) ;
 scalar_t__ tb_wait_for_port (struct tb_port*,int) ;

int tb_switch_resume(struct tb_switch *sw)
{
 int i, err;
 tb_sw_dbg(sw, "resuming switch\n");





 if (tb_route(sw)) {
  u64 uid;






  err = tb_cfg_get_upstream_port(sw->tb->ctl, tb_route(sw));
  if (err < 0) {
   tb_sw_info(sw, "switch not present anymore\n");
   return err;
  }

  err = tb_drom_read_uid_only(sw, &uid);
  if (err) {
   tb_sw_warn(sw, "uid read failed\n");
   return err;
  }
  if (sw->uid != uid) {
   tb_sw_info(sw,
    "changed while suspended (uid %#llx -> %#llx)\n",
    sw->uid, uid);
   return -ENODEV;
  }
 }


 err = tb_sw_write(sw, 1 + (u32 *) &sw->config, TB_CFG_SWITCH, 1, 3);
 if (err)
  return err;

 err = tb_lc_configure_link(sw);
 if (err)
  return err;

 err = tb_plug_events_active(sw, 1);
 if (err)
  return err;


 for (i = 1; i <= sw->config.max_port_number; i++) {
  struct tb_port *port = &sw->ports[i];

  if (!tb_port_has_remote(port) && !port->xdomain)
   continue;

  if (tb_wait_for_port(port, 1) <= 0) {
   tb_port_warn(port,
         "lost during suspend, disconnecting\n");
   if (tb_port_has_remote(port))
    tb_sw_set_unplugged(port->remote->sw);
   else if (port->xdomain)
    port->xdomain->is_unplugged = 1;
  } else if (tb_port_has_remote(port)) {
   if (tb_switch_resume(port->remote->sw)) {
    tb_port_warn(port,
          "lost during suspend, disconnecting\n");
    tb_sw_set_unplugged(port->remote->sw);
   }
  }
 }
 return 0;
}
