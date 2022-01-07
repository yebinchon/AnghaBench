
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int desc; } ;


 int regulator_desc_list_voltage_linear_range (int ,unsigned int) ;

int regulator_list_voltage_linear_range(struct regulator_dev *rdev,
     unsigned int selector)
{
 return regulator_desc_list_voltage_linear_range(rdev->desc, selector);
}
