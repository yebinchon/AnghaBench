
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device_ops {int dummy; } ;
struct thermal_cooling_device {int dummy; } ;


 struct thermal_cooling_device* __thermal_cooling_device_register (int *,char const*,void*,struct thermal_cooling_device_ops const*) ;

struct thermal_cooling_device *
thermal_cooling_device_register(const char *type, void *devdata,
    const struct thermal_cooling_device_ops *ops)
{
 return __thermal_cooling_device_register(((void*)0), type, devdata, ops);
}
