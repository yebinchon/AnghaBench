
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qbman_swp {int dummy; } ;


 int QBMAN_CINH_SWP_IIR ;
 int qbman_read_register (struct qbman_swp*,int ) ;

int qbman_swp_interrupt_get_inhibit(struct qbman_swp *p)
{
 return qbman_read_register(p, QBMAN_CINH_SWP_IIR);
}
