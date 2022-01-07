
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct cros_ec_device {int dummy; } ;


 int cros_ec_unregister (struct cros_ec_device*) ;
 struct cros_ec_device* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int cros_ec_i2c_remove(struct i2c_client *client)
{
 struct cros_ec_device *ec_dev = i2c_get_clientdata(client);

 return cros_ec_unregister(ec_dev);
}
