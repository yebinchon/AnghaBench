
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device (int *,int *,struct device_node*,int ) ;
 int i2c_bus_type ;
 struct i2c_client* isp1301_i2c_client ;
 int match ;
 struct i2c_client* to_i2c_client (struct device*) ;

struct i2c_client *isp1301_get_client(struct device_node *node)
{
 if (node) {
  struct device *dev = bus_find_device(&i2c_bus_type, ((void*)0),
           node, match);
  if (!dev)
   return ((void*)0);
  return to_i2c_client(dev);
 } else {
  return isp1301_i2c_client;
 }
}
