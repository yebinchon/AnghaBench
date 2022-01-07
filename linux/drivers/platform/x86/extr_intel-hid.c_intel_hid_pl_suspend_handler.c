
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int intel_button_array_enable (struct device*,int) ;
 int intel_hid_set_enable (struct device*,int) ;
 int pm_suspend_no_platform () ;

__attribute__((used)) static int intel_hid_pl_suspend_handler(struct device *device)
{
 intel_button_array_enable(device, 0);

 if (!pm_suspend_no_platform())
  intel_hid_set_enable(device, 0);

 return 0;
}
