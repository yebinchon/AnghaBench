
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int reg_read (struct i2c_client*,int const) ;
 int reg_write (struct i2c_client*,int const,int) ;

__attribute__((used)) static int reg_set(struct i2c_client *client, const u8 reg,
     const u16 data)
{
 int ret;

 ret = reg_read(client, reg);
 if (ret < 0)
  return ret;
 return reg_write(client, reg, ret | data);
}
