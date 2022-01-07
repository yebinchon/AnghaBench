
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {unsigned int num_lanes; int lane; } ;
struct nd_percpu_lane {int lock; int count; } ;


 unsigned int get_cpu () ;
 unsigned int nr_cpu_ids ;
 struct nd_percpu_lane* per_cpu_ptr (int ,unsigned int) ;
 int spin_lock (int *) ;

unsigned int nd_region_acquire_lane(struct nd_region *nd_region)
{
 unsigned int cpu, lane;

 cpu = get_cpu();
 if (nd_region->num_lanes < nr_cpu_ids) {
  struct nd_percpu_lane *ndl_lock, *ndl_count;

  lane = cpu % nd_region->num_lanes;
  ndl_count = per_cpu_ptr(nd_region->lane, cpu);
  ndl_lock = per_cpu_ptr(nd_region->lane, lane);
  if (ndl_count->count++ == 0)
   spin_lock(&ndl_lock->lock);
 } else
  lane = cpu;

 return lane;
}
