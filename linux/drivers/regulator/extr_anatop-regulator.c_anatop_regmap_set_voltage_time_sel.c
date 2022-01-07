
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regulator_dev {int regmap; } ;
struct anatop_regulator {int delay_bit_width; int delay_bit_shift; int delay_reg; } ;


 unsigned int LDO_RAMP_UP_FREQ_IN_MHZ ;
 int LDO_RAMP_UP_UNIT_IN_CYCLES ;
 struct anatop_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int anatop_regmap_set_voltage_time_sel(struct regulator_dev *reg,
 unsigned int old_sel,
 unsigned int new_sel)
{
 struct anatop_regulator *anatop_reg = rdev_get_drvdata(reg);
 u32 val;
 int ret = 0;


 if (anatop_reg->delay_bit_width && new_sel > old_sel) {






  regmap_read(reg->regmap, anatop_reg->delay_reg, &val);
  val = (val >> anatop_reg->delay_bit_shift) &
   ((1 << anatop_reg->delay_bit_width) - 1);
  ret = (new_sel - old_sel) * (LDO_RAMP_UP_UNIT_IN_CYCLES <<
   val) / LDO_RAMP_UP_FREQ_IN_MHZ + 1;
 }

 return ret;
}
