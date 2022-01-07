
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf2123_data {int map; } ;
struct device {int dummy; } ;
typedef int s8 ;


 int DIV_ROUND_CLOSEST (long,int) ;
 int OFFSET_COARSE ;
 int OFFSET_STEP ;
 int PCF2123_REG_OFFSET ;
 struct pcf2123_data* dev_get_drvdata (struct device*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int pcf2123_set_offset(struct device *dev, long offset)
{
 struct pcf2123_data *pcf2123 = dev_get_drvdata(dev);
 s8 reg;

 if (offset > OFFSET_STEP * 127)
  reg = 127;
 else if (offset < OFFSET_STEP * -128)
  reg = -128;
 else
  reg = DIV_ROUND_CLOSEST(offset, OFFSET_STEP);


 if (reg & 1 && reg <= 63 && reg >= -64) {

  reg &= ~OFFSET_COARSE;
 } else {

  reg >>= 1;
  reg |= OFFSET_COARSE;
 }

 return regmap_write(pcf2123->map, PCF2123_REG_OFFSET, (unsigned int)reg);
}
