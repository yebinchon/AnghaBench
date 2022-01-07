
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int ABX8XX_OSS_OMODE ;
 int ABX8XX_REG_OSS ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int abx80x_is_rc_mode(struct i2c_client *client)
{
 int flags = 0;

 flags = i2c_smbus_read_byte_data(client, ABX8XX_REG_OSS);
 if (flags < 0) {
  dev_err(&client->dev,
   "Failed to read autocalibration attribute\n");
  return flags;
 }

 return (flags & ABX8XX_OSS_OMODE) ? 1 : 0;
}
