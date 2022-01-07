
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int ENODEV ;
 int RT1711H_PID ;
 int RT1711H_VID ;
 int TCPC_PRODUCT_ID ;
 int TCPC_VENDOR_ID ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;

__attribute__((used)) static int rt1711h_check_revision(struct i2c_client *i2c)
{
 int ret;

 ret = i2c_smbus_read_word_data(i2c, TCPC_VENDOR_ID);
 if (ret < 0)
  return ret;
 if (ret != RT1711H_VID) {
  dev_err(&i2c->dev, "vid is not correct, 0x%04x\n", ret);
  return -ENODEV;
 }
 ret = i2c_smbus_read_word_data(i2c, TCPC_PRODUCT_ID);
 if (ret < 0)
  return ret;
 if (ret != RT1711H_PID) {
  dev_err(&i2c->dev, "pid is not correct, 0x%04x\n", ret);
  return -ENODEV;
 }
 return 0;
}
