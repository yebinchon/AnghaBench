
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zone_device {unsigned int cpu; int tj_max; int cpumask; int msr_pkg_therm_high; int msr_pkg_therm_low; int tzone; int work; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_NUMBER_OF_TRIPS ;
 int MSR_IA32_PACKAGE_THERM_INTERRUPT ;
 int PTR_ERR (int ) ;
 int clamp_val (int,int ,int) ;
 int cpuid (int,int*,int*,int*,int*) ;
 int cpumask_set_cpu (unsigned int,int *) ;
 int get_tj_max (unsigned int,int*) ;
 int kfree (struct zone_device*) ;
 struct zone_device* kzalloc (int,int ) ;
 int max_id ;
 int pkg_temp_lock ;
 int pkg_temp_thermal_threshold_work_fn ;
 int pkg_temp_tz_params ;
 int rdmsr (int ,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int thermal_zone_device_register (char*,int,int,struct zone_device*,int *,int *,int ,int ) ;
 int topology_logical_die_id (unsigned int) ;
 int tzone_ops ;
 struct zone_device** zones ;

__attribute__((used)) static int pkg_temp_thermal_device_add(unsigned int cpu)
{
 int id = topology_logical_die_id(cpu);
 u32 tj_max, eax, ebx, ecx, edx;
 struct zone_device *zonedev;
 int thres_count, err;

 if (id >= max_id)
  return -ENOMEM;

 cpuid(6, &eax, &ebx, &ecx, &edx);
 thres_count = ebx & 0x07;
 if (!thres_count)
  return -ENODEV;

 thres_count = clamp_val(thres_count, 0, MAX_NUMBER_OF_TRIPS);

 err = get_tj_max(cpu, &tj_max);
 if (err)
  return err;

 zonedev = kzalloc(sizeof(*zonedev), GFP_KERNEL);
 if (!zonedev)
  return -ENOMEM;

 INIT_DELAYED_WORK(&zonedev->work, pkg_temp_thermal_threshold_work_fn);
 zonedev->cpu = cpu;
 zonedev->tj_max = tj_max;
 zonedev->tzone = thermal_zone_device_register("x86_pkg_temp",
   thres_count,
   (thres_count == MAX_NUMBER_OF_TRIPS) ? 0x03 : 0x01,
   zonedev, &tzone_ops, &pkg_temp_tz_params, 0, 0);
 if (IS_ERR(zonedev->tzone)) {
  err = PTR_ERR(zonedev->tzone);
  kfree(zonedev);
  return err;
 }

 rdmsr(MSR_IA32_PACKAGE_THERM_INTERRUPT, zonedev->msr_pkg_therm_low,
       zonedev->msr_pkg_therm_high);

 cpumask_set_cpu(cpu, &zonedev->cpumask);
 spin_lock_irq(&pkg_temp_lock);
 zones[id] = zonedev;
 spin_unlock_irq(&pkg_temp_lock);
 return 0;
}
