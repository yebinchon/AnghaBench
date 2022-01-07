
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int HYM8563_CTL2 ;
 int HYM8563_CTL2_AIE ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int hym8563_rtc_alarm_irq_enable(struct device *dev,
     unsigned int enabled)
{
 struct i2c_client *client = to_i2c_client(dev);
 int data;

 data = i2c_smbus_read_byte_data(client, HYM8563_CTL2);
 if (data < 0)
  return data;

 if (enabled)
  data |= HYM8563_CTL2_AIE;
 else
  data &= ~HYM8563_CTL2_AIE;

 return i2c_smbus_write_byte_data(client, HYM8563_CTL2, data);
}
