
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p; } ;


 int QM_REG_IIR ;
 int QM_REG_ISR ;
 TYPE_1__** affine_portals ;
 int num_possible_cpus () ;
 int qm_out (int *,int ,int) ;

void qman_enable_irqs(void)
{
 int i;

 for (i = 0; i < num_possible_cpus(); i++) {
  if (affine_portals[i]) {
   qm_out(&affine_portals[i]->p, QM_REG_ISR, 0xffffffff);
   qm_out(&affine_portals[i]->p, QM_REG_IIR, 0);
  }

 }
}
