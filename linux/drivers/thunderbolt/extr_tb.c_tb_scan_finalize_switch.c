
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_switch {int authorized; scalar_t__ boot; } ;
struct device {int kobj; } ;


 int KOBJ_ADD ;
 int dev_set_uevent_suppress (struct device*,int) ;
 int device_for_each_child (struct device*,int *,int (*) (struct device*,void*)) ;
 int kobject_uevent (int *,int ) ;
 scalar_t__ tb_is_switch (struct device*) ;
 struct tb_switch* tb_to_switch (struct device*) ;

__attribute__((used)) static int tb_scan_finalize_switch(struct device *dev, void *data)
{
 if (tb_is_switch(dev)) {
  struct tb_switch *sw = tb_to_switch(dev);






  if (sw->boot)
   sw->authorized = 1;

  dev_set_uevent_suppress(dev, 0);
  kobject_uevent(&dev->kobj, KOBJ_ADD);
  device_for_each_child(dev, ((void*)0), tb_scan_finalize_switch);
 }

 return 0;
}
