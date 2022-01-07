
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zone_device {int work_scheduled; int work; int cpu; } ;


 int disable_pkg_thres_interrupt () ;
 int pkg_interrupt_cnt ;
 int pkg_temp_lock ;
 struct zone_device* pkg_temp_thermal_get_dev (int) ;
 int pkg_thermal_schedule_work (int ,int *) ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pkg_thermal_notify(u64 msr_val)
{
 int cpu = smp_processor_id();
 struct zone_device *zonedev;
 unsigned long flags;

 spin_lock_irqsave(&pkg_temp_lock, flags);
 ++pkg_interrupt_cnt;

 disable_pkg_thres_interrupt();


 zonedev = pkg_temp_thermal_get_dev(cpu);
 if (zonedev && !zonedev->work_scheduled) {
  zonedev->work_scheduled = 1;
  pkg_thermal_schedule_work(zonedev->cpu, &zonedev->work);
 }

 spin_unlock_irqrestore(&pkg_temp_lock, flags);
 return 0;
}
