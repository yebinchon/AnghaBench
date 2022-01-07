
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resistor_sense; } ;
struct bq2415x_device {TYPE_1__ init_data; } ;


 int BQ2415X_MASK_RESET ;
 int BQ2415X_MASK_VI_TERM ;
 int BQ2415X_REG_CURRENT ;
 int BQ2415X_SHIFT_VI_TERM ;
 int EINVAL ;
 int bq2415x_i2c_write_mask (struct bq2415x_device*,int ,int,int,int ) ;

__attribute__((used)) static int bq2415x_set_termination_current(struct bq2415x_device *bq, int mA)
{
 int val;

 if (bq->init_data.resistor_sense <= 0)
  return -EINVAL;

 val = (mA * bq->init_data.resistor_sense - 3400) / 3400;
 if (val < 0)
  val = 0;
 else if (val > 7)
  val = 7;

 return bq2415x_i2c_write_mask(bq, BQ2415X_REG_CURRENT, val,
   BQ2415X_MASK_VI_TERM | BQ2415X_MASK_RESET,
   BQ2415X_SHIFT_VI_TERM);
}
