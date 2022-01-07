
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
typedef int s32 ;


 int i2c_smbus_write_byte_data (struct i2c_client const*,int,int) ;

__attribute__((used)) static s32 rx8025_write_reg(const struct i2c_client *client, u8 number,
       u8 value)
{
 return i2c_smbus_write_byte_data(client, number << 4, value);
}
