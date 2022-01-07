
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tb_switch {int dev; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct tb_port {TYPE_2__* dual_link_port; struct tb_port* remote; int * xdomain; TYPE_3__* sw; scalar_t__ link_nr; TYPE_1__ config; int port; } ;
struct tb_cm {int hotplug_active; } ;
struct TYPE_6__ {int dev; int tb; } ;
struct TYPE_5__ {struct TYPE_5__* remote; } ;


 int EADDRNOTAVAIL ;
 int EIO ;
 scalar_t__ IS_ERR (struct tb_switch*) ;
 int PTR_ERR (struct tb_switch*) ;
 scalar_t__ TB_TYPE_PORT ;
 int dev_set_uevent_suppress (int *,int) ;
 int tb_downstream_route (struct tb_port*) ;
 int tb_dp_port_hpd_is_active (struct tb_port*) ;
 int tb_dp_port_is_enabled (struct tb_port*) ;
 scalar_t__ tb_is_upstream_port (struct tb_port*) ;
 int tb_port_dbg (struct tb_port*,char*) ;
 scalar_t__ tb_port_is_dpout (struct tb_port*) ;
 struct tb_cm* tb_priv (int ) ;
 int tb_queue_hotplug (int ,int ,int ,int) ;
 int tb_route (TYPE_3__*) ;
 int tb_scan_switch (struct tb_switch*) ;
 int tb_scan_xdomain (struct tb_port*) ;
 scalar_t__ tb_switch_add (struct tb_switch*) ;
 struct tb_switch* tb_switch_alloc (int ,int *,int ) ;
 scalar_t__ tb_switch_configure (struct tb_switch*) ;
 int tb_switch_put (struct tb_switch*) ;
 struct tb_port* tb_upstream_port (struct tb_switch*) ;
 scalar_t__ tb_wait_for_port (struct tb_port*,int) ;
 int tb_xdomain_remove (int *) ;

__attribute__((used)) static void tb_scan_port(struct tb_port *port)
{
 struct tb_cm *tcm = tb_priv(port->sw->tb);
 struct tb_port *upstream_port;
 struct tb_switch *sw;

 if (tb_is_upstream_port(port))
  return;

 if (tb_port_is_dpout(port) && tb_dp_port_hpd_is_active(port) == 1 &&
     !tb_dp_port_is_enabled(port)) {
  tb_port_dbg(port, "DP adapter HPD set, queuing hotplug\n");
  tb_queue_hotplug(port->sw->tb, tb_route(port->sw), port->port,
     0);
  return;
 }

 if (port->config.type != TB_TYPE_PORT)
  return;
 if (port->dual_link_port && port->link_nr)
  return;



 if (tb_wait_for_port(port, 0) <= 0)
  return;
 if (port->remote) {
  tb_port_dbg(port, "port already has a remote\n");
  return;
 }
 sw = tb_switch_alloc(port->sw->tb, &port->sw->dev,
        tb_downstream_route(port));
 if (IS_ERR(sw)) {





  if (PTR_ERR(sw) == -EIO || PTR_ERR(sw) == -EADDRNOTAVAIL)
   tb_scan_xdomain(port);
  return;
 }

 if (tb_switch_configure(sw)) {
  tb_switch_put(sw);
  return;
 }





 if (port->xdomain) {
  tb_xdomain_remove(port->xdomain);
  port->xdomain = ((void*)0);
 }






 if (!tcm->hotplug_active)
  dev_set_uevent_suppress(&sw->dev, 1);

 if (tb_switch_add(sw)) {
  tb_switch_put(sw);
  return;
 }


 upstream_port = tb_upstream_port(sw);
 port->remote = upstream_port;
 upstream_port->remote = port;
 if (port->dual_link_port && upstream_port->dual_link_port) {
  port->dual_link_port->remote = upstream_port->dual_link_port;
  upstream_port->dual_link_port->remote = port->dual_link_port;
 }

 tb_scan_switch(sw);
}
