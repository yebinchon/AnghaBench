
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev_root; } ;


 int device_create_file (int ,scalar_t__) ;
 scalar_t__* rtl_attributes ;
 TYPE_1__ rtl_subsys ;
 int subsys_system_register (TYPE_1__*,int *) ;

__attribute__((used)) static int rtl_setup_sysfs(void) {
 int ret, i;

 ret = subsys_system_register(&rtl_subsys, ((void*)0));
 if (!ret) {
  for (i = 0; rtl_attributes[i]; i ++)
   device_create_file(rtl_subsys.dev_root, rtl_attributes[i]);
 }
 return ret;
}
