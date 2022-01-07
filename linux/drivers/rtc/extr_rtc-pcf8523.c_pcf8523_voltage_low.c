
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int REG_CONTROL3 ;
 int REG_CONTROL3_BLF ;
 int pcf8523_read (struct i2c_client*,int ,int*) ;

__attribute__((used)) static int pcf8523_voltage_low(struct i2c_client *client)
{
 u8 value;
 int err;

 err = pcf8523_read(client, REG_CONTROL3, &value);
 if (err < 0)
  return err;

 return !!(value & REG_CONTROL3_BLF);
}
