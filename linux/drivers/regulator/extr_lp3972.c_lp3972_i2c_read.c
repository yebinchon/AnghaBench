
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int EIO ;
 int i2c_smbus_read_byte_data (struct i2c_client*,char) ;

__attribute__((used)) static int lp3972_i2c_read(struct i2c_client *i2c, char reg, int count,
 u16 *dest)
{
 int ret;

 if (count != 1)
  return -EIO;
 ret = i2c_smbus_read_byte_data(i2c, reg);
 if (ret < 0)
  return ret;

 *dest = ret;
 return 0;
}
