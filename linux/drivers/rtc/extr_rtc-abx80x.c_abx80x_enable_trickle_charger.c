
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int ABX8XX_CFG_KEY_MISC ;
 int ABX8XX_REG_CFG_KEY ;
 int ABX8XX_REG_TRICKLE ;
 int ABX8XX_TRICKLE_CHARGE_ENABLE ;
 int EIO ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int abx80x_enable_trickle_charger(struct i2c_client *client,
      u8 trickle_cfg)
{
 int err;





 err = i2c_smbus_write_byte_data(client, ABX8XX_REG_CFG_KEY,
     ABX8XX_CFG_KEY_MISC);
 if (err < 0) {
  dev_err(&client->dev, "Unable to write configuration key\n");
  return -EIO;
 }

 err = i2c_smbus_write_byte_data(client, ABX8XX_REG_TRICKLE,
     ABX8XX_TRICKLE_CHARGE_ENABLE |
     trickle_cfg);
 if (err < 0) {
  dev_err(&client->dev, "Unable to write trickle register\n");
  return -EIO;
 }

 return 0;
}
