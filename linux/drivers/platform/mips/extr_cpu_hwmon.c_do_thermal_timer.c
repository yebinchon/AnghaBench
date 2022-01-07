
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int CPU_THERMAL_THRESHOLD ;
 int loongson3_cpu_temp (int) ;
 int msecs_to_jiffies (int) ;
 int nr_packages ;
 int orderly_poweroff (int) ;
 int schedule_delayed_work (int *,int ) ;
 int thermal_work ;

__attribute__((used)) static void do_thermal_timer(struct work_struct *work)
{
 int i, value, temp_max = 0;

 for (i=0; i<nr_packages; i++) {
  value = loongson3_cpu_temp(i);
  if (value > temp_max)
   temp_max = value;
 }

 if (temp_max <= CPU_THERMAL_THRESHOLD)
  schedule_delayed_work(&thermal_work, msecs_to_jiffies(5000));
 else
  orderly_poweroff(1);
}
