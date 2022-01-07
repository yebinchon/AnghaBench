
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct tb_switch {TYPE_1__ dev; } ;


 int bus_for_each_dev (int *,TYPE_1__*,int *,int (*) (TYPE_1__*,int *)) ;
 int complete_rpm (TYPE_1__*,int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int tb_bus_type ;
 int tb_switch_remove (struct tb_switch*) ;

__attribute__((used)) static void remove_unplugged_switch(struct tb_switch *sw)
{
 pm_runtime_get_sync(sw->dev.parent);






 complete_rpm(&sw->dev, ((void*)0));
 bus_for_each_dev(&tb_bus_type, &sw->dev, ((void*)0), complete_rpm);
 tb_switch_remove(sw);

 pm_runtime_mark_last_busy(sw->dev.parent);
 pm_runtime_put_autosuspend(sw->dev.parent);
}
