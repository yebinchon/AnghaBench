
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_2__* constraints; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ state_standby; } ;


 struct regulator_dev* dev_get_drvdata (struct device*) ;
 int regulator_print_opmode (char*,int ) ;

__attribute__((used)) static ssize_t regulator_suspend_standby_mode_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct regulator_dev *rdev = dev_get_drvdata(dev);

 return regulator_print_opmode(buf,
  rdev->constraints->state_standby.mode);
}
