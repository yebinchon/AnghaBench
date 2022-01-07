
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6598x {int port; } ;
struct i2c_client {int dummy; } ;


 struct tps6598x* i2c_get_clientdata (struct i2c_client*) ;
 int tps6598x_disconnect (struct tps6598x*,int ) ;
 int typec_unregister_port (int ) ;

__attribute__((used)) static int tps6598x_remove(struct i2c_client *client)
{
 struct tps6598x *tps = i2c_get_clientdata(client);

 tps6598x_disconnect(tps, 0);
 typec_unregister_port(tps->port);

 return 0;
}
