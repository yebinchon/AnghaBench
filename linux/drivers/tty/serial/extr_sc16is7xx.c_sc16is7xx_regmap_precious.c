
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int SC16IS7XX_REG_SHIFT ;


__attribute__((used)) static bool sc16is7xx_regmap_precious(struct device *dev, unsigned int reg)
{
 switch (reg >> SC16IS7XX_REG_SHIFT) {
 case 128:
  return 1;
 default:
  break;
 }

 return 0;
}
