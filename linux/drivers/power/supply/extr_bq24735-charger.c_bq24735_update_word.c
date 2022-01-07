
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int bq24735_read_word (struct i2c_client*,int ) ;
 int bq24735_write_word (struct i2c_client*,int ,unsigned int) ;

__attribute__((used)) static int bq24735_update_word(struct i2c_client *client, u8 reg,
          u16 mask, u16 value)
{
 unsigned int tmp;
 int ret;

 ret = bq24735_read_word(client, reg);
 if (ret < 0)
  return ret;

 tmp = ret & ~mask;
 tmp |= value & mask;

 return bq24735_write_word(client, reg, tmp);
}
