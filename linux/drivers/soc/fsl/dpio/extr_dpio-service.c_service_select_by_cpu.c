
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_io {int dummy; } ;


 int DPAA2_IO_ANY_CPU ;
 struct dpaa2_io** dpio_by_cpu ;
 int num_possible_cpus () ;
 int smp_processor_id () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct dpaa2_io *service_select_by_cpu(struct dpaa2_io *d,
           int cpu)
{
 if (d)
  return d;

 if (cpu != DPAA2_IO_ANY_CPU && cpu >= num_possible_cpus())
  return ((void*)0);





 if (unlikely(cpu < 0))
  cpu = smp_processor_id();


 return dpio_by_cpu[cpu];
}
