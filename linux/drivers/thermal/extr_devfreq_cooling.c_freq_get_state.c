
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfreq_cooling_device {int freq_table_size; unsigned long* freq_table; } ;


 unsigned long THERMAL_CSTATE_INVALID ;

__attribute__((used)) static unsigned long
freq_get_state(struct devfreq_cooling_device *dfc, unsigned long freq)
{
 int i;

 for (i = 0; i < dfc->freq_table_size; i++) {
  if (dfc->freq_table[i] == freq)
   return i;
 }

 return THERMAL_CSTATE_INVALID;
}
