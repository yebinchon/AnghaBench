
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;
struct devfreq {int dummy; } ;


 struct thermal_cooling_device* of_devfreq_cooling_register (int *,struct devfreq*) ;

struct thermal_cooling_device *devfreq_cooling_register(struct devfreq *df)
{
 return of_devfreq_cooling_register(((void*)0), df);
}
