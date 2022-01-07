
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int rdev; } ;


 int _regulator_get_error_flags (int ,unsigned int*) ;

int regulator_get_error_flags(struct regulator *regulator,
    unsigned int *flags)
{
 return _regulator_get_error_flags(regulator->rdev, flags);
}
