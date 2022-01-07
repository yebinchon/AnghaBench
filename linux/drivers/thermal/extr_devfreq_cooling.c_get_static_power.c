
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devfreq_cooling_device {TYPE_1__* power_ops; struct devfreq* devfreq; } ;
struct devfreq {int dummy; } ;
struct TYPE_2__ {unsigned long (* get_static_power ) (struct devfreq*,unsigned long) ;} ;


 unsigned long get_voltage (struct devfreq*,unsigned long) ;
 unsigned long stub1 (struct devfreq*,unsigned long) ;

__attribute__((used)) static unsigned long
get_static_power(struct devfreq_cooling_device *dfc, unsigned long freq)
{
 struct devfreq *df = dfc->devfreq;
 unsigned long voltage;

 if (!dfc->power_ops->get_static_power)
  return 0;

 voltage = get_voltage(df, freq);

 if (voltage == 0)
  return 0;

 return dfc->power_ops->get_static_power(df, voltage);
}
