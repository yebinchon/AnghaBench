
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef int s8 ;


 int REG_OFFSET ;
 int REG_OFFSET_MODE ;
 int pcf8523_read (struct i2c_client*,int ,int*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int pcf8523_rtc_read_offset(struct device *dev, long *offset)
{
 struct i2c_client *client = to_i2c_client(dev);
 int err;
 u8 value;
 s8 val;

 err = pcf8523_read(client, REG_OFFSET, &value);
 if (err < 0)
  return err;


 val = value << 1;
 *offset = (value & REG_OFFSET_MODE ? 4069 : 4340) * (val >> 1);

 return 0;
}
