
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_is_hotpluggable (int) ;
 scalar_t__ cpu_online (int) ;
 scalar_t__ cpu_present (int) ;
 int device_offline (int ) ;
 int get_cpu_device (int) ;
 int lock_device_hotplug () ;
 int set_cpu_present (int,int) ;
 int unlock_device_hotplug () ;
 int xen_arch_unregister_cpu (int) ;

__attribute__((used)) static void disable_hotplug_cpu(int cpu)
{
 if (!cpu_is_hotpluggable(cpu))
  return;
 lock_device_hotplug();
 if (cpu_online(cpu))
  device_offline(get_cpu_device(cpu));
 if (!cpu_online(cpu) && cpu_present(cpu)) {
  xen_arch_unregister_cpu(cpu);
  set_cpu_present(cpu, 0);
 }
 unlock_device_hotplug();
}
