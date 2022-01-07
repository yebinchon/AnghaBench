
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct tb_cm {int hotplug_active; } ;
struct tb {TYPE_1__* root_switch; int dev; } ;
struct TYPE_9__ {int no_nvm_upgrade; int dev; } ;


 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int device_for_each_child (int *,int *,int ) ;
 int tb_discover_tunnels (TYPE_1__*) ;
 struct tb_cm* tb_priv (struct tb*) ;
 int tb_scan_finalize_switch ;
 int tb_scan_switch (TYPE_1__*) ;
 int tb_switch_add (TYPE_1__*) ;
 TYPE_1__* tb_switch_alloc (struct tb*,int *,int ) ;
 int tb_switch_configure (TYPE_1__*) ;
 int tb_switch_put (TYPE_1__*) ;

__attribute__((used)) static int tb_start(struct tb *tb)
{
 struct tb_cm *tcm = tb_priv(tb);
 int ret;

 tb->root_switch = tb_switch_alloc(tb, &tb->dev, 0);
 if (IS_ERR(tb->root_switch))
  return PTR_ERR(tb->root_switch);






 tb->root_switch->no_nvm_upgrade = 1;

 ret = tb_switch_configure(tb->root_switch);
 if (ret) {
  tb_switch_put(tb->root_switch);
  return ret;
 }


 ret = tb_switch_add(tb->root_switch);
 if (ret) {
  tb_switch_put(tb->root_switch);
  return ret;
 }


 tb_scan_switch(tb->root_switch);

 tb_discover_tunnels(tb->root_switch);

 device_for_each_child(&tb->root_switch->dev, ((void*)0),
         tb_scan_finalize_switch);


 tcm->hotplug_active = 1;
 return 0;
}
