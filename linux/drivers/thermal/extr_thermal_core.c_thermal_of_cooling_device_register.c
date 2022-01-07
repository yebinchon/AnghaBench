
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device_ops {int dummy; } ;
struct thermal_cooling_device {int dummy; } ;
struct device_node {int dummy; } ;


 struct thermal_cooling_device* __thermal_cooling_device_register (struct device_node*,char const*,void*,struct thermal_cooling_device_ops const*) ;

struct thermal_cooling_device *
thermal_of_cooling_device_register(struct device_node *np,
       const char *type, void *devdata,
       const struct thermal_cooling_device_ops *ops)
{
 return __thermal_cooling_device_register(np, type, devdata, ops);
}
