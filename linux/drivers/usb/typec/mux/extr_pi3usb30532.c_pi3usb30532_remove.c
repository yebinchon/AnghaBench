
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi3usb30532 {int sw; int mux; } ;
struct i2c_client {int dummy; } ;


 struct pi3usb30532* i2c_get_clientdata (struct i2c_client*) ;
 int typec_mux_unregister (int ) ;
 int typec_switch_unregister (int ) ;

__attribute__((used)) static int pi3usb30532_remove(struct i2c_client *client)
{
 struct pi3usb30532 *pi = i2c_get_clientdata(client);

 typec_mux_unregister(pi->mux);
 typec_switch_unregister(pi->sw);
 return 0;
}
