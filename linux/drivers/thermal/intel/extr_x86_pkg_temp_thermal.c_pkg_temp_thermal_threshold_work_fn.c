
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zone_device {int work_scheduled; struct thermal_zone_device* tzone; } ;
struct work_struct {int dummy; } ;
struct thermal_zone_device {int dummy; } ;


 int MSR_IA32_PACKAGE_THERM_STATUS ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int THERM_LOG_THRESHOLD0 ;
 int THERM_LOG_THRESHOLD1 ;
 int enable_pkg_thres_interrupt () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pkg_temp_lock ;
 struct zone_device* pkg_temp_thermal_get_dev (int) ;
 int pkg_work_cnt ;
 int rdmsrl (int ,int) ;
 int smp_processor_id () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int thermal_zone_device_update (struct thermal_zone_device*,int ) ;
 int thermal_zone_mutex ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void pkg_temp_thermal_threshold_work_fn(struct work_struct *work)
{
 struct thermal_zone_device *tzone = ((void*)0);
 int cpu = smp_processor_id();
 struct zone_device *zonedev;
 u64 msr_val, wr_val;

 mutex_lock(&thermal_zone_mutex);
 spin_lock_irq(&pkg_temp_lock);
 ++pkg_work_cnt;

 zonedev = pkg_temp_thermal_get_dev(cpu);
 if (!zonedev) {
  spin_unlock_irq(&pkg_temp_lock);
  mutex_unlock(&thermal_zone_mutex);
  return;
 }
 zonedev->work_scheduled = 0;

 rdmsrl(MSR_IA32_PACKAGE_THERM_STATUS, msr_val);
 wr_val = msr_val & ~(THERM_LOG_THRESHOLD0 | THERM_LOG_THRESHOLD1);
 if (wr_val != msr_val) {
  wrmsrl(MSR_IA32_PACKAGE_THERM_STATUS, wr_val);
  tzone = zonedev->tzone;
 }

 enable_pkg_thres_interrupt();
 spin_unlock_irq(&pkg_temp_lock);





 if (tzone)
  thermal_zone_device_update(tzone, THERMAL_EVENT_UNSPECIFIED);

 mutex_unlock(&thermal_zone_mutex);
}
