
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int REG_CONTROL1 ;
 int REG_CONTROL1_STOP ;
 int pcf8523_read (struct i2c_client*,int ,int *) ;
 int pcf8523_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int pcf8523_start_rtc(struct i2c_client *client)
{
 u8 value;
 int err;

 err = pcf8523_read(client, REG_CONTROL1, &value);
 if (err < 0)
  return err;

 value &= ~REG_CONTROL1_STOP;

 err = pcf8523_write(client, REG_CONTROL1, value);
 if (err < 0)
  return err;

 return 0;
}
