
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf2123_data {int map; } ;
struct device {int dummy; } ;


 unsigned int OFFSET_COARSE ;
 unsigned int OFFSET_MASK ;
 int OFFSET_SIGN_BIT ;
 long OFFSET_STEP ;
 int PCF2123_REG_OFFSET ;
 struct pcf2123_data* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int sign_extend32 (unsigned int,int ) ;

__attribute__((used)) static int pcf2123_read_offset(struct device *dev, long *offset)
{
 struct pcf2123_data *pcf2123 = dev_get_drvdata(dev);
 int ret, val;
 unsigned int reg;

 ret = regmap_read(pcf2123->map, PCF2123_REG_OFFSET, &reg);
 if (ret)
  return ret;

 val = sign_extend32((reg & OFFSET_MASK), OFFSET_SIGN_BIT);

 if (reg & OFFSET_COARSE)
  val *= 2;

 *offset = ((long)val) * OFFSET_STEP;

 return 0;
}
