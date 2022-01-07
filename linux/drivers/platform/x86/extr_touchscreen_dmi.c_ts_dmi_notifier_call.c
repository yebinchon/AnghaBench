
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;



 struct i2c_client* i2c_verify_client (struct device*) ;
 int ts_dmi_add_props (struct i2c_client*) ;

__attribute__((used)) static int ts_dmi_notifier_call(struct notifier_block *nb,
           unsigned long action, void *data)
{
 struct device *dev = data;
 struct i2c_client *client;

 switch (action) {
 case 128:
  client = i2c_verify_client(dev);
  if (client)
   ts_dmi_add_props(client);
  break;

 default:
  break;
 }

 return 0;
}
