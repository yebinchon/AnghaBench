
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int dummy; } ;


 scalar_t__ ISL1219_REG_YRT ;
 int WARN_ON (int) ;
 int i2c_smbus_write_i2c_block_data (struct i2c_client*,scalar_t__,unsigned int,scalar_t__ const*) ;

__attribute__((used)) static int
isl1208_i2c_set_regs(struct i2c_client *client, u8 reg, u8 const buf[],
       unsigned len)
{
 int ret;

 WARN_ON(reg > ISL1219_REG_YRT);
 WARN_ON(reg + len > ISL1219_REG_YRT + 1);

 ret = i2c_smbus_write_i2c_block_data(client, reg, len, buf);
 return (ret < 0) ? ret : 0;
}
