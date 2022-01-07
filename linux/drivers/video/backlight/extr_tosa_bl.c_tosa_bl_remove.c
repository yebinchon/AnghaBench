
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tosa_bl_data {int * bl; } ;
struct i2c_client {int dummy; } ;


 struct tosa_bl_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int tosa_bl_remove(struct i2c_client *client)
{
 struct tosa_bl_data *data = i2c_get_clientdata(client);

 data->bl = ((void*)0);
 return 0;
}
