
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone_device {int dummy; } ;


 int max_id ;
 int topology_logical_die_id (unsigned int) ;
 struct zone_device** zones ;

__attribute__((used)) static struct zone_device *pkg_temp_thermal_get_dev(unsigned int cpu)
{
 int id = topology_logical_die_id(cpu);

 if (id >= 0 && id < max_id)
  return zones[id];
 return ((void*)0);
}
