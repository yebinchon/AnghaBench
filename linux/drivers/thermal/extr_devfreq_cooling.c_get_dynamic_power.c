
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef unsigned long u32 ;
struct devfreq_cooling_power {unsigned long (* get_dynamic_power ) (int ,unsigned long,unsigned long) ;scalar_t__ dyn_power_coeff; } ;
struct devfreq_cooling_device {int devfreq; struct devfreq_cooling_power* power_ops; } ;


 int do_div (unsigned long,int) ;
 unsigned long stub1 (int ,unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long
get_dynamic_power(struct devfreq_cooling_device *dfc, unsigned long freq,
    unsigned long voltage)
{
 u64 power;
 u32 freq_mhz;
 struct devfreq_cooling_power *dfc_power = dfc->power_ops;

 if (dfc_power->get_dynamic_power)
  return dfc_power->get_dynamic_power(dfc->devfreq, freq,
          voltage);

 freq_mhz = freq / 1000000;
 power = (u64)dfc_power->dyn_power_coeff * freq_mhz * voltage * voltage;
 do_div(power, 1000000000);

 return power;
}
