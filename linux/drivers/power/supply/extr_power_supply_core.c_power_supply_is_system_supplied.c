
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __power_supply_is_system_supplied ;
 int class_for_each_device (int ,int *,unsigned int*,int ) ;
 int power_supply_class ;

int power_supply_is_system_supplied(void)
{
 int error;
 unsigned int count = 0;

 error = class_for_each_device(power_supply_class, ((void*)0), &count,
          __power_supply_is_system_supplied);





 if (count == 0)
  return 1;

 return error;
}
