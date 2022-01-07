
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int MAX6900_REG_CONTROL_WRITE ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int max6900_i2c_clear_write_protect(struct i2c_client *client)
{
 return i2c_smbus_write_byte_data(client, MAX6900_REG_CONTROL_WRITE, 0);
}
