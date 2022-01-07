
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpus_unused_mask ;
 int dpaa2_dpio_driver ;
 int free_cpumask_var (int ) ;
 int fsl_mc_driver_unregister (int *) ;

__attribute__((used)) static void dpio_driver_exit(void)
{
 free_cpumask_var(cpus_unused_mask);
 fsl_mc_driver_unregister(&dpaa2_dpio_driver);
}
