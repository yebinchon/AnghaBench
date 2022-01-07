
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dummy; } ;
struct max1586_data {unsigned int v3_curr_sel; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int I2C_V3_SELECT ;
 int dev_dbg (int *,char*,int) ;
 int i2c_smbus_write_byte (struct i2c_client*,int) ;
 struct max1586_data* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_list_voltage_linear (struct regulator_dev*,unsigned int) ;

__attribute__((used)) static int max1586_v3_set_voltage_sel(struct regulator_dev *rdev,
          unsigned selector)
{
 struct max1586_data *max1586 = rdev_get_drvdata(rdev);
 struct i2c_client *client = max1586->client;
 int ret;
 u8 v3_prog;

 dev_dbg(&client->dev, "changing voltage v3 to %dmv\n",
  regulator_list_voltage_linear(rdev, selector) / 1000);

 v3_prog = I2C_V3_SELECT | (u8) selector;
 ret = i2c_smbus_write_byte(client, v3_prog);
 if (ret)
  return ret;

 max1586->v3_curr_sel = selector;

 return 0;
}
