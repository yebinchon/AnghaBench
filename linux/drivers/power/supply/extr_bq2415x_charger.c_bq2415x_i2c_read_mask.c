
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq2415x_device {int dummy; } ;


 int EINVAL ;
 int bq2415x_i2c_read (struct bq2415x_device*,int) ;

__attribute__((used)) static int bq2415x_i2c_read_mask(struct bq2415x_device *bq, u8 reg,
     u8 mask, u8 shift)
{
 int ret;

 if (shift > 8)
  return -EINVAL;

 ret = bq2415x_i2c_read(bq, reg);
 if (ret < 0)
  return ret;
 return (ret & mask) >> shift;
}
