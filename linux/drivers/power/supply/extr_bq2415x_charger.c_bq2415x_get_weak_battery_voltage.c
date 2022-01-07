
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq2415x_device {int dummy; } ;


 int BQ2415X_MASK_VLOWV ;
 int BQ2415X_REG_CONTROL ;
 int BQ2415X_SHIFT_VLOWV ;
 int bq2415x_i2c_read_mask (struct bq2415x_device*,int ,int ,int ) ;

__attribute__((used)) static int bq2415x_get_weak_battery_voltage(struct bq2415x_device *bq)
{
 int ret;

 ret = bq2415x_i2c_read_mask(bq, BQ2415X_REG_CONTROL,
   BQ2415X_MASK_VLOWV, BQ2415X_SHIFT_VLOWV);
 if (ret < 0)
  return ret;
 return 100 * (34 + ret);
}
