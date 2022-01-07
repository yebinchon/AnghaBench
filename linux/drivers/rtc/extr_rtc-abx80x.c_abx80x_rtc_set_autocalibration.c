
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int ABX8XX_CFG_KEY_OSC ;
 int ABX8XX_OSC_ACAL_1024 ;
 int ABX8XX_OSC_ACAL_512 ;
 int ABX8XX_REG_CFG_KEY ;
 int ABX8XX_REG_OSC ;
 int EINVAL ;
 int dev_err (struct device*,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int abx80x_rtc_set_autocalibration(struct device *dev,
       int autocalibration)
{
 struct i2c_client *client = to_i2c_client(dev);
 int retval, flags = 0;

 if ((autocalibration != 0) && (autocalibration != 1024) &&
     (autocalibration != 512)) {
  dev_err(dev, "autocalibration value outside permitted range\n");
  return -EINVAL;
 }

 flags = i2c_smbus_read_byte_data(client, ABX8XX_REG_OSC);
 if (flags < 0)
  return flags;

 if (autocalibration == 0) {
  flags &= ~(ABX8XX_OSC_ACAL_512 | ABX8XX_OSC_ACAL_1024);
 } else if (autocalibration == 1024) {

  flags |= ABX8XX_OSC_ACAL_1024;
  flags &= ~(ABX8XX_OSC_ACAL_512);
 } else {

  flags |= (ABX8XX_OSC_ACAL_1024 | ABX8XX_OSC_ACAL_512);
 }


 retval = i2c_smbus_write_byte_data(client, ABX8XX_REG_CFG_KEY,
        ABX8XX_CFG_KEY_OSC);
 if (retval < 0) {
  dev_err(dev, "Failed to write CONFIG_KEY register\n");
  return retval;
 }

 retval = i2c_smbus_write_byte_data(client, ABX8XX_REG_OSC, flags);

 return retval;
}
