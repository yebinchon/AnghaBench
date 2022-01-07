
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone_device {unsigned int cpu; int work; scalar_t__ work_scheduled; int msr_pkg_therm_high; int msr_pkg_therm_low; struct thermal_zone_device* tzone; int cpumask; } ;
struct thermal_zone_device {int dummy; } ;


 int MSR_IA32_PACKAGE_THERM_INTERRUPT ;
 int cancel_delayed_work_sync (int *) ;
 int cpumask_any_but (int *,unsigned int) ;
 int cpumask_clear_cpu (unsigned int,int *) ;
 int kfree (struct zone_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nr_cpu_ids ;
 int pkg_temp_lock ;
 struct zone_device* pkg_temp_thermal_get_dev (unsigned int) ;
 int pkg_thermal_schedule_work (int,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int thermal_zone_device_unregister (struct thermal_zone_device*) ;
 int thermal_zone_mutex ;
 size_t topology_logical_die_id (unsigned int) ;
 int wrmsr (int ,int ,int ) ;
 int ** zones ;

__attribute__((used)) static int pkg_thermal_cpu_offline(unsigned int cpu)
{
 struct zone_device *zonedev = pkg_temp_thermal_get_dev(cpu);
 bool lastcpu, was_target;
 int target;

 if (!zonedev)
  return 0;

 target = cpumask_any_but(&zonedev->cpumask, cpu);
 cpumask_clear_cpu(cpu, &zonedev->cpumask);
 lastcpu = target >= nr_cpu_ids;




 if (lastcpu) {
  struct thermal_zone_device *tzone = zonedev->tzone;







  mutex_lock(&thermal_zone_mutex);
  zonedev->tzone = ((void*)0);
  mutex_unlock(&thermal_zone_mutex);

  thermal_zone_device_unregister(tzone);
 }


 spin_lock_irq(&pkg_temp_lock);






 was_target = zonedev->cpu == cpu;
 zonedev->cpu = target;







 if (lastcpu) {
  zones[topology_logical_die_id(cpu)] = ((void*)0);

  wrmsr(MSR_IA32_PACKAGE_THERM_INTERRUPT,
        zonedev->msr_pkg_therm_low, zonedev->msr_pkg_therm_high);
 }





 if (zonedev->work_scheduled && was_target) {




  spin_unlock_irq(&pkg_temp_lock);
  cancel_delayed_work_sync(&zonedev->work);
  spin_lock_irq(&pkg_temp_lock);






  if (!lastcpu && zonedev->work_scheduled)
   pkg_thermal_schedule_work(target, &zonedev->work);
 }

 spin_unlock_irq(&pkg_temp_lock);


 if (lastcpu)
  kfree(zonedev);
 return 0;
}
