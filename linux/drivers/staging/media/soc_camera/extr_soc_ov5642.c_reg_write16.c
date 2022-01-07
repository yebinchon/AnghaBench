
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int reg_write (struct i2c_client*,int,int) ;

__attribute__((used)) static int reg_write16(struct i2c_client *client, u16 reg, u16 val16)
{
 int ret;

 ret = reg_write(client, reg, val16 >> 8);
 if (ret)
  return ret;
 return reg_write(client, reg + 1, val16 & 0x00ff);
}
