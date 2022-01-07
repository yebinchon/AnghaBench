
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
typedef int s32 ;


 int i2c_smbus_read_byte_data (struct i2c_client const*,int) ;

__attribute__((used)) static s32 rx8025_read_reg(const struct i2c_client *client, u8 number)
{
 return i2c_smbus_read_byte_data(client, number << 4);
}
