
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int * type; } ;




 int chromeos_laptop_adjust_client (int ) ;
 int chromeos_laptop_check_adapter (int ) ;
 int chromeos_laptop_detach_i2c_client (int ) ;
 int i2c_adapter_type ;
 int i2c_client_type ;
 int to_i2c_adapter (struct device*) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static int chromeos_laptop_i2c_notifier_call(struct notifier_block *nb,
          unsigned long action, void *data)
{
 struct device *dev = data;

 switch (action) {
 case 129:
  if (dev->type == &i2c_adapter_type)
   chromeos_laptop_check_adapter(to_i2c_adapter(dev));
  else if (dev->type == &i2c_client_type)
   chromeos_laptop_adjust_client(to_i2c_client(dev));
  break;

 case 128:
  if (dev->type == &i2c_client_type)
   chromeos_laptop_detach_i2c_client(to_i2c_client(dev));
  break;
 }

 return 0;
}
