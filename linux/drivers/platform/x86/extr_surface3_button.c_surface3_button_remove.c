
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct surface3_button_data {scalar_t__* children; } ;
struct i2c_client {int dummy; } ;


 int BUTTON_TYPES ;
 struct surface3_button_data* i2c_get_clientdata (struct i2c_client*) ;
 int platform_device_unregister (scalar_t__) ;

__attribute__((used)) static int surface3_button_remove(struct i2c_client *client)
{
 struct surface3_button_data *priv = i2c_get_clientdata(client);

 int i;

 for (i = 0; i < BUTTON_TYPES; i++)
  if (priv->children[i])
   platform_device_unregister(priv->children[i]);

 return 0;
}
