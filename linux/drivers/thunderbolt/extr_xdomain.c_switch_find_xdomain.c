
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tb_xdomain_lookup {scalar_t__ link; scalar_t__ depth; scalar_t__ route; int uuid; } ;
struct tb_xdomain {scalar_t__ link; scalar_t__ depth; scalar_t__ route; scalar_t__ remote_uuid; } ;
struct TYPE_3__ {int max_port_number; } ;
struct tb_switch {struct tb_port* ports; TYPE_1__ config; } ;
struct tb_port {TYPE_2__* remote; struct tb_xdomain* xdomain; } ;
struct TYPE_4__ {struct tb_switch* sw; } ;


 scalar_t__ tb_port_has_remote (struct tb_port*) ;
 scalar_t__ uuid_equal (scalar_t__,int ) ;

__attribute__((used)) static struct tb_xdomain *switch_find_xdomain(struct tb_switch *sw,
 const struct tb_xdomain_lookup *lookup)
{
 int i;

 for (i = 1; i <= sw->config.max_port_number; i++) {
  struct tb_port *port = &sw->ports[i];
  struct tb_xdomain *xd;

  if (port->xdomain) {
   xd = port->xdomain;

   if (lookup->uuid) {
    if (xd->remote_uuid &&
        uuid_equal(xd->remote_uuid, lookup->uuid))
     return xd;
   } else if (lookup->link &&
       lookup->link == xd->link &&
       lookup->depth == xd->depth) {
    return xd;
   } else if (lookup->route &&
       lookup->route == xd->route) {
    return xd;
   }
  } else if (tb_port_has_remote(port)) {
   xd = switch_find_xdomain(port->remote->sw, lookup);
   if (xd)
    return xd;
  }
 }

 return ((void*)0);
}
