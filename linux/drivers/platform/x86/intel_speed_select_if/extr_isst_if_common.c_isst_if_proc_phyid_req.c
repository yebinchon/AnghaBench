
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct isst_if_cpu_map {size_t logical_cpu; int physical_cpu; } ;
struct TYPE_2__ {int punit_cpu_id; } ;


 long EINVAL ;
 TYPE_1__* isst_cpu_info ;
 size_t nr_cpu_ids ;
 size_t num_possible_cpus () ;

__attribute__((used)) static long isst_if_proc_phyid_req(u8 *cmd_ptr, int *write_only, int resume)
{
 struct isst_if_cpu_map *cpu_map;

 cpu_map = (struct isst_if_cpu_map *)cmd_ptr;
 if (cpu_map->logical_cpu >= nr_cpu_ids ||
     cpu_map->logical_cpu >= num_possible_cpus())
  return -EINVAL;

 *write_only = 0;
 cpu_map->physical_cpu = isst_cpu_info[cpu_map->logical_cpu].punit_cpu_id;

 return 0;
}
