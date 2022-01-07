
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {int enabled; } ;
struct tb_switch {TYPE_2__ dev; TYPE_1__ config; } ;
struct tb_port {int dummy; } ;


 int tb_lc_configure_lane (struct tb_port*,int) ;
 struct tb_port* tb_port_at (int ,int ) ;
 int tb_route (struct tb_switch*) ;
 int tb_to_switch (int ) ;
 struct tb_port* tb_upstream_port (struct tb_switch*) ;

int tb_lc_configure_link(struct tb_switch *sw)
{
 struct tb_port *up, *down;
 int ret;

 if (!sw->config.enabled || !tb_route(sw))
  return 0;

 up = tb_upstream_port(sw);
 down = tb_port_at(tb_route(sw), tb_to_switch(sw->dev.parent));


 ret = tb_lc_configure_lane(down, 1);
 if (ret)
  return ret;


 ret = tb_lc_configure_lane(up, 1);
 if (ret)
  tb_lc_configure_lane(down, 0);

 return ret;
}
