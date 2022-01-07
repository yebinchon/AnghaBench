
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov9740_reg {int val; int reg; } ;
struct i2c_client {int dummy; } ;


 int ov9740_reg_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int ov9740_reg_write_array(struct i2c_client *client,
      const struct ov9740_reg *regarray,
      int regarraylen)
{
 int i;
 int ret;

 for (i = 0; i < regarraylen; i++) {
  ret = ov9740_reg_write(client,
           regarray[i].reg, regarray[i].val);
  if (ret < 0)
   return ret;
 }

 return 0;
}
