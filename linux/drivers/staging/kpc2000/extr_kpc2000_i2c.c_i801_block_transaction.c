
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union i2c_smbus_data {int* block; } ;
struct TYPE_2__ {int dev; } ;
struct i2c_device {int features; TYPE_1__ adapter; } ;


 int EOPNOTSUPP ;
 int FEATURE_BLOCK_BUFFER ;
 int FEATURE_I2C_BLOCK_READ ;
 int I2C_SMBUS_BLOCK_MAX ;
 int I2C_SMBUS_I2C_BLOCK_DATA ;
 char I2C_SMBUS_WRITE ;
 int dev_err (int *,char*) ;
 int i801_block_transaction_by_block (struct i2c_device*,union i2c_smbus_data*,char,int) ;
 int i801_block_transaction_byte_by_byte (struct i2c_device*,union i2c_smbus_data*,char,int,int) ;
 scalar_t__ i801_set_block_buffer_mode (struct i2c_device*) ;
 int i801_wait_hwpec (struct i2c_device*) ;

__attribute__((used)) static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int command, int hwpec)
{
 int result = 0;


 if (command == I2C_SMBUS_I2C_BLOCK_DATA) {
  if (read_write == I2C_SMBUS_WRITE) {




  } else if (!(priv->features & FEATURE_I2C_BLOCK_READ)) {
   dev_err(&priv->adapter.dev, "I2C block read is unsupported!\n");
   return -EOPNOTSUPP;
  }
 }

 if (read_write == I2C_SMBUS_WRITE || command == I2C_SMBUS_I2C_BLOCK_DATA) {
  if (data->block[0] < 1)
   data->block[0] = 1;
  if (data->block[0] > I2C_SMBUS_BLOCK_MAX)
   data->block[0] = I2C_SMBUS_BLOCK_MAX;
 } else {
  data->block[0] = 32;
 }





 if ((priv->features & FEATURE_BLOCK_BUFFER) && command != I2C_SMBUS_I2C_BLOCK_DATA && i801_set_block_buffer_mode(priv) == 0)
  result = i801_block_transaction_by_block(priv, data, read_write, hwpec);
 else
  result = i801_block_transaction_byte_by_byte(priv, data, read_write, command, hwpec);
 if (result == 0 && hwpec)
  i801_wait_hwpec(priv);
 if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_WRITE) {



 }
 return result;
}
