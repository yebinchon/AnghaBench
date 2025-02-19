
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf85063 {int regmap; } ;
struct device {int dummy; } ;
typedef int s8 ;


 int DIV_ROUND_CLOSEST (long,int) ;
 int ERANGE ;
 int PCF85063_OFFSET_MODE ;
 int PCF85063_OFFSET_STEP0 ;
 int PCF85063_OFFSET_STEP1 ;
 int PCF85063_REG_OFFSET ;
 unsigned int abs (long) ;
 struct pcf85063* dev_get_drvdata (struct device*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int pcf85063_set_offset(struct device *dev, long offset)
{
 struct pcf85063 *pcf85063 = dev_get_drvdata(dev);
 s8 mode0, mode1, reg;
 unsigned int error0, error1;

 if (offset > PCF85063_OFFSET_STEP0 * 63)
  return -ERANGE;
 if (offset < PCF85063_OFFSET_STEP0 * -64)
  return -ERANGE;

 mode0 = DIV_ROUND_CLOSEST(offset, PCF85063_OFFSET_STEP0);
 mode1 = DIV_ROUND_CLOSEST(offset, PCF85063_OFFSET_STEP1);

 error0 = abs(offset - (mode0 * PCF85063_OFFSET_STEP0));
 error1 = abs(offset - (mode1 * PCF85063_OFFSET_STEP1));
 if (mode1 > 63 || mode1 < -64 || error0 < error1)
  reg = mode0 & ~PCF85063_OFFSET_MODE;
 else
  reg = mode1 | PCF85063_OFFSET_MODE;

 return regmap_write(pcf85063->regmap, PCF85063_REG_OFFSET, reg);
}
