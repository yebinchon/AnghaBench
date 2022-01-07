
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;


 int MT9T031_SHUTTER_WIDTH ;
 int MT9T031_SHUTTER_WIDTH_UPPER ;
 int reg_write (struct i2c_client*,int ,int const) ;

__attribute__((used)) static int set_shutter(struct i2c_client *client, const u32 data)
{
 int ret;

 ret = reg_write(client, MT9T031_SHUTTER_WIDTH_UPPER, data >> 16);

 if (ret >= 0)
  ret = reg_write(client, MT9T031_SHUTTER_WIDTH, data & 0xffff);

 return ret;
}
