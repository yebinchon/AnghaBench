
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int M41T80_ALMON_AFE ;
 int M41T80_REG_ALARM_MON ;
 int dev_err (struct device*,char*,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int m41t80_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct i2c_client *client = to_i2c_client(dev);
 int flags, retval;

 flags = i2c_smbus_read_byte_data(client, M41T80_REG_ALARM_MON);
 if (flags < 0)
  return flags;

 if (enabled)
  flags |= M41T80_ALMON_AFE;
 else
  flags &= ~M41T80_ALMON_AFE;

 retval = i2c_smbus_write_byte_data(client, M41T80_REG_ALARM_MON, flags);
 if (retval < 0) {
  dev_err(dev, "Unable to enable alarm IRQ %d\n", retval);
  return retval;
 }
 return 0;
}
