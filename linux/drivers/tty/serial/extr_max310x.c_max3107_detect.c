
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max310x_port {TYPE_1__* devtype; int regmap; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 unsigned int MAX3107_REV_ID ;
 int MAX310X_REVID_REG ;
 unsigned int MAX310x_REV_MASK ;
 int dev_err (struct device*,char*,int ,unsigned int) ;
 struct max310x_port* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max3107_detect(struct device *dev)
{
 struct max310x_port *s = dev_get_drvdata(dev);
 unsigned int val = 0;
 int ret;

 ret = regmap_read(s->regmap, MAX310X_REVID_REG, &val);
 if (ret)
  return ret;

 if (((val & MAX310x_REV_MASK) != MAX3107_REV_ID)) {
  dev_err(dev,
   "%s ID 0x%02x does not match\n", s->devtype->name, val);
  return -ENODEV;
 }

 return 0;
}
