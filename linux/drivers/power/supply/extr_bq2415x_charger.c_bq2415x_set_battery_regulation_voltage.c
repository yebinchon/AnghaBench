
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq2415x_device {int dummy; } ;


 int BQ2415X_MASK_VO ;
 int BQ2415X_REG_VOLTAGE ;
 int BQ2415X_SHIFT_VO ;
 int EINVAL ;
 int bq2415x_i2c_write_mask (struct bq2415x_device*,int ,int,int ,int ) ;

__attribute__((used)) static int bq2415x_set_battery_regulation_voltage(struct bq2415x_device *bq,
        int mV)
{
 int val = (mV/10 - 350) / 2;





 if (val < 0)
  val = 0;
 else if (val > 47)
  return -EINVAL;

 return bq2415x_i2c_write_mask(bq, BQ2415X_REG_VOLTAGE, val,
   BQ2415X_MASK_VO, BQ2415X_SHIFT_VO);
}
