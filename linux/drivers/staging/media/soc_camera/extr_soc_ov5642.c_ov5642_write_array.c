
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regval_list {int reg_num; int value; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;
 int reg_write (struct i2c_client*,int,int) ;

__attribute__((used)) static int ov5642_write_array(struct i2c_client *client,
    struct regval_list *vals)
{
 while (vals->reg_num != 0xffff || vals->value != 0xff) {
  int ret = reg_write(client, vals->reg_num, vals->value);
  if (ret < 0)
   return ret;
  vals++;
 }
 dev_dbg(&client->dev, "Register list loaded\n");
 return 0;
}
