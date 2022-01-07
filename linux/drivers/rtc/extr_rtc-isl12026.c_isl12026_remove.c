
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl12026 {int nvm_client; } ;
struct i2c_client {int dummy; } ;


 struct isl12026* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;

__attribute__((used)) static int isl12026_remove(struct i2c_client *client)
{
 struct isl12026 *priv = i2c_get_clientdata(client);

 i2c_unregister_device(priv->nvm_client);
 return 0;
}
