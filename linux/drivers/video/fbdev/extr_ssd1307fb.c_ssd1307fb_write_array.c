
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ssd1307fb_array {int dummy; } ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_master_send (struct i2c_client*,int *,int) ;

__attribute__((used)) static int ssd1307fb_write_array(struct i2c_client *client,
     struct ssd1307fb_array *array, u32 len)
{
 int ret;

 len += sizeof(struct ssd1307fb_array);

 ret = i2c_master_send(client, (u8 *)array, len);
 if (ret != len) {
  dev_err(&client->dev, "Couldn't send I2C command.\n");
  return ret;
 }

 return 0;
}
