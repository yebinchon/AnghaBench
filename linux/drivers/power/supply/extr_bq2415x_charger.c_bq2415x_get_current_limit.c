
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq2415x_device {int dummy; } ;


 int BQ2415X_MASK_LIMIT ;
 int BQ2415X_REG_CONTROL ;
 int BQ2415X_SHIFT_LIMIT ;
 int EINVAL ;
 int bq2415x_i2c_read_mask (struct bq2415x_device*,int ,int ,int ) ;

__attribute__((used)) static int bq2415x_get_current_limit(struct bq2415x_device *bq)
{
 int ret;

 ret = bq2415x_i2c_read_mask(bq, BQ2415X_REG_CONTROL,
   BQ2415X_MASK_LIMIT, BQ2415X_SHIFT_LIMIT);
 if (ret < 0)
  return ret;
 else if (ret == 0)
  return 100;
 else if (ret == 1)
  return 500;
 else if (ret == 2)
  return 800;
 else if (ret == 3)
  return 1800;
 return -EINVAL;
}
