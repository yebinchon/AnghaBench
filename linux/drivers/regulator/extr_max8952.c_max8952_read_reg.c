
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max8952_data {int client; } ;


 int i2c_smbus_read_byte_data (int ,int ) ;

__attribute__((used)) static int max8952_read_reg(struct max8952_data *max8952, u8 reg)
{
 int ret = i2c_smbus_read_byte_data(max8952->client, reg);

 if (ret > 0)
  ret &= 0xff;

 return ret;
}
