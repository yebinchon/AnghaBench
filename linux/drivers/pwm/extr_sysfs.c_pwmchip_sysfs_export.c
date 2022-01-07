
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_chip {int dev; int base; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct device*) ;
 int MKDEV (int ,int ) ;
 int dev_warn (int ,char*) ;
 struct device* device_create (int *,int ,int ,struct pwm_chip*,char*,int ) ;
 int pwm_class ;

void pwmchip_sysfs_export(struct pwm_chip *chip)
{
 struct device *parent;





 parent = device_create(&pwm_class, chip->dev, MKDEV(0, 0), chip,
          "pwmchip%d", chip->base);
 if (IS_ERR(parent)) {
  dev_warn(chip->dev,
    "device_create failed for pwm_chip sysfs export\n");
 }
}
