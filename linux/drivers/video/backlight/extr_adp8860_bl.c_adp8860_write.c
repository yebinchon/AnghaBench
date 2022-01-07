
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int adp8860_write(struct i2c_client *client, u8 reg, u8 val)
{
 return i2c_smbus_write_byte_data(client, reg, val);
}
