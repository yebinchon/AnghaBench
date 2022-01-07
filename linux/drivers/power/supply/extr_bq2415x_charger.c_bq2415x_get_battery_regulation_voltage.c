
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq2415x_device {int dummy; } ;


 int BQ2415X_MASK_VO ;
 int BQ2415X_REG_VOLTAGE ;
 int BQ2415X_SHIFT_VO ;
 int bq2415x_i2c_read_mask (struct bq2415x_device*,int ,int ,int ) ;

__attribute__((used)) static int bq2415x_get_battery_regulation_voltage(struct bq2415x_device *bq)
{
 int ret = bq2415x_i2c_read_mask(bq, BQ2415X_REG_VOLTAGE,
   BQ2415X_MASK_VO, BQ2415X_SHIFT_VO);

 if (ret < 0)
  return ret;
 return 10 * (350 + 2*ret);
}
