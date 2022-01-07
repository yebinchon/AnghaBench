
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int WARN_ON (int) ;
 int i2c_smbus_write_i2c_block_data (struct i2c_client*,int,int,int*) ;

__attribute__((used)) static int ds1374_write_rtc(struct i2c_client *client, u32 time,
       int reg, int nbytes)
{
 u8 buf[4];
 int i;

 if (nbytes > 4) {
  WARN_ON(1);
  return -EINVAL;
 }

 for (i = 0; i < nbytes; i++) {
  buf[i] = time & 0xff;
  time >>= 8;
 }

 return i2c_smbus_write_i2c_block_data(client, reg, nbytes, buf);
}
