
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qman_portal {TYPE_1__* config; } ;
struct TYPE_2__ {int cpu; } ;


 int WARN_ON (int) ;
 int * affine_channels ;
 int affine_mask ;
 int cpumask_test_cpu (int,int *) ;
 struct qman_portal* get_affine_portal () ;
 int put_affine_portal () ;

u16 qman_affine_channel(int cpu)
{
 if (cpu < 0) {
  struct qman_portal *portal = get_affine_portal();

  cpu = portal->config->cpu;
  put_affine_portal();
 }
 WARN_ON(!cpumask_test_cpu(cpu, &affine_mask));
 return affine_channels[cpu];
}
