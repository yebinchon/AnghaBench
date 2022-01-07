
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_port_number; } ;
struct tb_switch {TYPE_3__* ports; TYPE_1__ config; } ;
struct TYPE_6__ {TYPE_2__* remote; } ;
struct TYPE_5__ {struct tb_switch* sw; } ;


 int tb_lc_set_sleep (struct tb_switch*) ;
 int tb_plug_events_active (struct tb_switch*,int) ;
 scalar_t__ tb_port_has_remote (TYPE_3__*) ;

void tb_switch_suspend(struct tb_switch *sw)
{
 int i, err;
 err = tb_plug_events_active(sw, 0);
 if (err)
  return;

 for (i = 1; i <= sw->config.max_port_number; i++) {
  if (tb_port_has_remote(&sw->ports[i]))
   tb_switch_suspend(sw->ports[i].remote->sw);
 }

 tb_lc_set_sleep(sw);
}
