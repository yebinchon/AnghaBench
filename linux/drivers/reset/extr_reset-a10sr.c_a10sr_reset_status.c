
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct reset_controller_dev {int dummy; } ;
struct a10sr_reset {int regmap; } ;


 int ALTR_A10SR_HPS_RST_REG ;
 unsigned int ALTR_A10SR_REG_BIT_MASK (int) ;
 int ALTR_A10SR_REG_OFFSET (int) ;
 int a10sr_reset_shift (unsigned long) ;
 int regmap_read (int ,int,unsigned int*) ;
 struct a10sr_reset* to_a10sr_rst (struct reset_controller_dev*) ;

__attribute__((used)) static int a10sr_reset_status(struct reset_controller_dev *rcdev,
         unsigned long id)
{
 int ret;
 struct a10sr_reset *a10r = to_a10sr_rst(rcdev);
 int offset = a10sr_reset_shift(id);
 u8 mask = ALTR_A10SR_REG_BIT_MASK(offset);
 int index = ALTR_A10SR_HPS_RST_REG + ALTR_A10SR_REG_OFFSET(offset);
 unsigned int value;

 ret = regmap_read(a10r->regmap, index, &value);
 if (ret < 0)
  return ret;

 return !!(value & mask);
}
