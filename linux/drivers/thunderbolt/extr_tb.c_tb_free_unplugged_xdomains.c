
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int max_port_number; } ;
struct tb_switch {struct tb_port* ports; TYPE_2__ config; } ;
struct tb_port {TYPE_1__* remote; TYPE_3__* xdomain; } ;
struct TYPE_6__ {scalar_t__ is_unplugged; } ;
struct TYPE_4__ {struct tb_switch* sw; } ;


 scalar_t__ tb_is_upstream_port (struct tb_port*) ;
 int tb_xdomain_remove (TYPE_3__*) ;

__attribute__((used)) static int tb_free_unplugged_xdomains(struct tb_switch *sw)
{
 int i, ret = 0;

 for (i = 1; i <= sw->config.max_port_number; i++) {
  struct tb_port *port = &sw->ports[i];

  if (tb_is_upstream_port(port))
   continue;
  if (port->xdomain && port->xdomain->is_unplugged) {
   tb_xdomain_remove(port->xdomain);
   port->xdomain = ((void*)0);
   ret++;
  } else if (port->remote) {
   ret += tb_free_unplugged_xdomains(port->remote->sw);
  }
 }

 return ret;
}
