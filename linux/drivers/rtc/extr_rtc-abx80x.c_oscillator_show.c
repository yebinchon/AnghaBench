
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int abx80x_is_rc_mode (struct i2c_client*) ;
 int dev_err (struct device*,char*) ;
 int sprintf (char*,char*) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static ssize_t oscillator_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 int rc_mode = 0;
 struct i2c_client *client = to_i2c_client(dev->parent);

 rc_mode = abx80x_is_rc_mode(client);

 if (rc_mode < 0) {
  dev_err(dev, "Failed to read RTC oscillator selection\n");
  sprintf(buf, "\n");
  return rc_mode;
 }

 if (rc_mode)
  return sprintf(buf, "rc\n");
 else
  return sprintf(buf, "xtal\n");
}
