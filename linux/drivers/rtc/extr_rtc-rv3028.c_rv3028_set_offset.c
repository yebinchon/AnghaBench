
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv3028_data {int regmap; } ;
struct device {int dummy; } ;


 int BIT (int) ;
 long DIV_ROUND_CLOSEST (long,int ) ;
 int OFFSET_STEP_PPT ;
 int RV3028_BACKUP ;
 int RV3028_OFFSET ;
 int clamp (long,long,long) ;
 struct rv3028_data* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,int ,long) ;
 int regmap_write (int ,int ,long) ;

__attribute__((used)) static int rv3028_set_offset(struct device *dev, long offset)
{
 struct rv3028_data *rv3028 = dev_get_drvdata(dev);
 int ret;

 offset = clamp(offset, -244141L, 243187L) * 1000;
 offset = DIV_ROUND_CLOSEST(offset, OFFSET_STEP_PPT);

 ret = regmap_write(rv3028->regmap, RV3028_OFFSET, offset >> 1);
 if (ret < 0)
  return ret;

 return regmap_update_bits(rv3028->regmap, RV3028_BACKUP, BIT(7),
      offset << 7);
}
