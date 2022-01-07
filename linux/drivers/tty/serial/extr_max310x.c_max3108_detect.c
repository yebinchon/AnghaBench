
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max310x_port {TYPE_1__* devtype; int regmap; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 unsigned int MAX310X_CLKSRC_EXTCLK_BIT ;
 unsigned int MAX310X_CLKSRC_PLLBYP_BIT ;
 int MAX310X_CLKSRC_REG ;
 int dev_err (struct device*,char*,int ) ;
 struct max310x_port* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max3108_detect(struct device *dev)
{
 struct max310x_port *s = dev_get_drvdata(dev);
 unsigned int val = 0;
 int ret;




 ret = regmap_read(s->regmap, MAX310X_CLKSRC_REG, &val);
 if (ret)
  return ret;

 if (val != (MAX310X_CLKSRC_EXTCLK_BIT | MAX310X_CLKSRC_PLLBYP_BIT)) {
  dev_err(dev, "%s not present\n", s->devtype->name);
  return -ENODEV;
 }

 return 0;
}
