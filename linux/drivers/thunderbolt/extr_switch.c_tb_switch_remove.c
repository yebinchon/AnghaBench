
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_port_number; } ;
struct tb_switch {int dev; int is_unplugged; TYPE_3__* ports; TYPE_1__ config; scalar_t__ rpm; } ;
struct TYPE_6__ {int * xdomain; TYPE_2__* remote; } ;
struct TYPE_5__ {struct tb_switch* sw; } ;


 int dev_info (int *,char*) ;
 int device_unregister (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int tb_lc_unconfigure_link (struct tb_switch*) ;
 int tb_plug_events_active (struct tb_switch*,int) ;
 scalar_t__ tb_port_has_remote (TYPE_3__*) ;
 scalar_t__ tb_route (struct tb_switch*) ;
 int tb_switch_nvm_remove (struct tb_switch*) ;
 int tb_xdomain_remove (int *) ;

void tb_switch_remove(struct tb_switch *sw)
{
 int i;

 if (sw->rpm) {
  pm_runtime_get_sync(&sw->dev);
  pm_runtime_disable(&sw->dev);
 }


 for (i = 1; i <= sw->config.max_port_number; i++) {
  if (tb_port_has_remote(&sw->ports[i])) {
   tb_switch_remove(sw->ports[i].remote->sw);
   sw->ports[i].remote = ((void*)0);
  } else if (sw->ports[i].xdomain) {
   tb_xdomain_remove(sw->ports[i].xdomain);
   sw->ports[i].xdomain = ((void*)0);
  }
 }

 if (!sw->is_unplugged)
  tb_plug_events_active(sw, 0);
 tb_lc_unconfigure_link(sw);

 tb_switch_nvm_remove(sw);

 if (tb_route(sw))
  dev_info(&sw->dev, "device disconnected\n");
 device_unregister(&sw->dev);
}
