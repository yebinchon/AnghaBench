
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_online_mask ;
 int cpumask_copy (int ,int ) ;
 int cpus_unused_mask ;
 int dpaa2_dpio_driver ;
 int fsl_mc_driver_register (int *) ;
 int zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static int dpio_driver_init(void)
{
 if (!zalloc_cpumask_var(&cpus_unused_mask, GFP_KERNEL))
  return -ENOMEM;
 cpumask_copy(cpus_unused_mask, cpu_online_mask);

 return fsl_mc_driver_register(&dpaa2_dpio_driver);
}
