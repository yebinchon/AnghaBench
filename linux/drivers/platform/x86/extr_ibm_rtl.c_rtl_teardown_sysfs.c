
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev_root; } ;


 int bus_unregister (TYPE_1__*) ;
 int device_remove_file (int ,scalar_t__) ;
 scalar_t__* rtl_attributes ;
 TYPE_1__ rtl_subsys ;

__attribute__((used)) static void rtl_teardown_sysfs(void) {
 int i;
 for (i = 0; rtl_attributes[i]; i ++)
  device_remove_file(rtl_subsys.dev_root, rtl_attributes[i]);
 bus_unregister(&rtl_subsys);
}
