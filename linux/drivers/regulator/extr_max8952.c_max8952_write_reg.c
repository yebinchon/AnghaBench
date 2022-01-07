
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max8952_data {int client; } ;


 int i2c_smbus_write_byte_data (int ,int ,int ) ;

__attribute__((used)) static int max8952_write_reg(struct max8952_data *max8952,
  u8 reg, u8 value)
{
 return i2c_smbus_write_byte_data(max8952->client, reg, value);
}
