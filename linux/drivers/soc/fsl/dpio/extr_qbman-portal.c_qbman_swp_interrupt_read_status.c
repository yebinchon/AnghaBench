
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qbman_swp {int dummy; } ;


 int QBMAN_CINH_SWP_ISR ;
 int qbman_read_register (struct qbman_swp*,int ) ;

u32 qbman_swp_interrupt_read_status(struct qbman_swp *p)
{
 return qbman_read_register(p, QBMAN_CINH_SWP_ISR);
}
