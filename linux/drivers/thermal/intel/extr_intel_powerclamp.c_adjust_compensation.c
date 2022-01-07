
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerclamp_calibration_data {scalar_t__ confidence; int steady_comp; } ;


 scalar_t__ CONFIDENCE_OK ;
 unsigned int atomic_read (int *) ;
 struct powerclamp_calibration_data* cal_data ;
 int current_ratio ;
 int idle_wakeup_counter ;
 unsigned int num_online_cpus () ;
 int roundup (int,int) ;
 int set_target_ratio ;

__attribute__((used)) static void adjust_compensation(int target_ratio, unsigned int win)
{
 int delta;
 struct powerclamp_calibration_data *d = &cal_data[target_ratio];






 if (d->confidence >= CONFIDENCE_OK ||
  atomic_read(&idle_wakeup_counter) >
  win * num_online_cpus())
  return;

 delta = set_target_ratio - current_ratio;

 if (delta >= 0 && delta <= (1+target_ratio/10)) {
  if (d->steady_comp)
   d->steady_comp =
    roundup(delta+d->steady_comp, 2)/2;
  else
   d->steady_comp = delta;
  d->confidence++;
 }
}
