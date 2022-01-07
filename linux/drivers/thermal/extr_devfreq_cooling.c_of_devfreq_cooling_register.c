
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;
struct device_node {int dummy; } ;
struct devfreq {int dummy; } ;


 struct thermal_cooling_device* of_devfreq_cooling_register_power (struct device_node*,struct devfreq*,int *) ;

struct thermal_cooling_device *
of_devfreq_cooling_register(struct device_node *np, struct devfreq *df)
{
 return of_devfreq_cooling_register_power(np, df, ((void*)0));
}
