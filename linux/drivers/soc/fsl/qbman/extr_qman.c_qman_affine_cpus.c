
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int const affine_mask ;

const cpumask_t *qman_affine_cpus(void)
{
 return &affine_mask;
}
