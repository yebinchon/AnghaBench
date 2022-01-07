
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct hdm_i2c {int most_iface; } ;


 struct hdm_i2c* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct hdm_i2c*) ;
 int most_deregister_interface (int *) ;

__attribute__((used)) static int i2c_remove(struct i2c_client *client)
{
 struct hdm_i2c *dev = i2c_get_clientdata(client);

 most_deregister_interface(&dev->most_iface);
 kfree(dev);

 return 0;
}
