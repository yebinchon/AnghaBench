
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int rdev; } ;


 int _regulator_list_voltage (int ,unsigned int,int) ;

int regulator_list_voltage(struct regulator *regulator, unsigned selector)
{
 return _regulator_list_voltage(regulator->rdev, selector, 1);
}
