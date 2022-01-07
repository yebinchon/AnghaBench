
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfreq_cooling_device {int dummy; } ;


 unsigned long get_dynamic_power (struct devfreq_cooling_device*,unsigned long,unsigned long) ;
 unsigned long get_static_power (struct devfreq_cooling_device*,unsigned long) ;

__attribute__((used)) static inline unsigned long get_total_power(struct devfreq_cooling_device *dfc,
         unsigned long freq,
         unsigned long voltage)
{
 return get_static_power(dfc, freq) + get_dynamic_power(dfc, freq,
              voltage);
}
