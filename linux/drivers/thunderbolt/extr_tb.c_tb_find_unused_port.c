
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_port_number; } ;
struct tb_switch {struct tb_port* ports; TYPE_1__ config; } ;
struct TYPE_4__ {int type; } ;
struct tb_port {int cap_adap; TYPE_2__ config; } ;
typedef enum tb_port_type { ____Placeholder_tb_port_type } tb_port_type ;


 scalar_t__ tb_is_upstream_port (struct tb_port*) ;
 scalar_t__ tb_port_is_enabled (struct tb_port*) ;

__attribute__((used)) static struct tb_port *tb_find_unused_port(struct tb_switch *sw,
        enum tb_port_type type)
{
 int i;

 for (i = 1; i <= sw->config.max_port_number; i++) {
  if (tb_is_upstream_port(&sw->ports[i]))
   continue;
  if (sw->ports[i].config.type != type)
   continue;
  if (!sw->ports[i].cap_adap)
   continue;
  if (tb_port_is_enabled(&sw->ports[i]))
   continue;
  return &sw->ports[i];
 }
 return ((void*)0);
}
