
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {void* reg_data; } ;



void *rdev_get_drvdata(struct regulator_dev *rdev)
{
 return rdev->reg_data;
}
