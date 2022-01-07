
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int EIO ;
 int MT9T031_OUTPUT_CONTROL ;
 int MT9T031_RESET ;
 int reg_clear (struct i2c_client*,int ,int) ;
 int reg_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static int mt9t031_idle(struct i2c_client *client)
{
 int ret;


 ret = reg_write(client, MT9T031_RESET, 1);
 if (ret >= 0)
  ret = reg_write(client, MT9T031_RESET, 0);
 if (ret >= 0)
  ret = reg_clear(client, MT9T031_OUTPUT_CONTROL, 2);

 return ret >= 0 ? 0 : -EIO;
}
