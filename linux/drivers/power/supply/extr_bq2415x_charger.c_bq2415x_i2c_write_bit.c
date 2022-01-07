
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq2415x_device {int dummy; } ;


 int BIT (int) ;
 int EINVAL ;
 int bq2415x_i2c_write_mask (struct bq2415x_device*,int,int,int ,int) ;

__attribute__((used)) static int bq2415x_i2c_write_bit(struct bq2415x_device *bq, u8 reg,
     bool val, u8 bit)
{
 if (bit > 8)
  return -EINVAL;
 return bq2415x_i2c_write_mask(bq, reg, val, BIT(bit), bit);
}
