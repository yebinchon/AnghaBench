
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct tps6586x_settings {int slew_rate; } ;
struct regulator_init_data {struct tps6586x_settings* driver_data; } ;
struct TYPE_2__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int EINVAL ;


 int TPS6586X_SLEW_RATE_MASK ;
 int TPS6586X_SLEW_RATE_SET ;
 int TPS6586X_SM0SL ;
 int TPS6586X_SM1SL ;
 int dev_err (TYPE_1__*,char*) ;
 int tps6586x_write (struct device*,int ,int) ;

__attribute__((used)) static int tps6586x_regulator_set_slew_rate(struct platform_device *pdev,
   int id, struct regulator_init_data *p)
{
 struct device *parent = pdev->dev.parent;
 struct tps6586x_settings *setting = p->driver_data;
 uint8_t reg;

 if (setting == ((void*)0))
  return 0;

 if (!(setting->slew_rate & TPS6586X_SLEW_RATE_SET))
  return 0;


 switch (id) {
 case 129:
  reg = TPS6586X_SM0SL;
  break;
 case 128:
  reg = TPS6586X_SM1SL;
  break;
 default:
  dev_err(&pdev->dev, "Only SM0/SM1 can set slew rate\n");
  return -EINVAL;
 }

 return tps6586x_write(parent, reg,
   setting->slew_rate & TPS6586X_SLEW_RATE_MASK);
}
