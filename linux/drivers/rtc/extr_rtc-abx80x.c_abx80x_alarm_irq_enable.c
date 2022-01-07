
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int ABX8XX_IRQ_AIE ;
 int ABX8XX_IRQ_IM_1_4 ;
 int ABX8XX_REG_IRQ ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int abx80x_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct i2c_client *client = to_i2c_client(dev);
 int err;

 if (enabled)
  err = i2c_smbus_write_byte_data(client, ABX8XX_REG_IRQ,
      (ABX8XX_IRQ_IM_1_4 |
       ABX8XX_IRQ_AIE));
 else
  err = i2c_smbus_write_byte_data(client, ABX8XX_REG_IRQ,
      ABX8XX_IRQ_IM_1_4);
 return err;
}
