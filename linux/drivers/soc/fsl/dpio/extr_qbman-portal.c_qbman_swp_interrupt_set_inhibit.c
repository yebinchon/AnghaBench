
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qbman_swp {int dummy; } ;


 int QBMAN_CINH_SWP_IIR ;
 int qbman_write_register (struct qbman_swp*,int ,int) ;

void qbman_swp_interrupt_set_inhibit(struct qbman_swp *p, int inhibit)
{
 qbman_write_register(p, QBMAN_CINH_SWP_IIR, inhibit ? 0xffffffff : 0);
}
