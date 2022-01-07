
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq2415x_device {int dummy; } ;


 int BQ2415X_MASK_VLOWV ;
 int BQ2415X_REG_CONTROL ;
 int BQ2415X_SHIFT_VLOWV ;
 int bq2415x_i2c_write_mask (struct bq2415x_device*,int ,int,int ,int ) ;

__attribute__((used)) static int bq2415x_set_weak_battery_voltage(struct bq2415x_device *bq, int mV)
{
 int val;


 if (mV <= 3400 + 50)
  val = 0;
 else if (mV <= 3500 + 50)
  val = 1;
 else if (mV <= 3600 + 50)
  val = 2;
 else
  val = 3;

 return bq2415x_i2c_write_mask(bq, BQ2415X_REG_CONTROL, val,
   BQ2415X_MASK_VLOWV, BQ2415X_SHIFT_VLOWV);
}
