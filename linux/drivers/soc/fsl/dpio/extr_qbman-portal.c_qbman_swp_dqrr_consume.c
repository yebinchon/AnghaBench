
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qbman_swp {int dummy; } ;
struct dpaa2_dq {int dummy; } ;


 int QBMAN_CINH_SWP_DCAP ;
 int QBMAN_IDX_FROM_DQRR (struct dpaa2_dq const*) ;
 int qbman_write_register (struct qbman_swp*,int ,int ) ;

void qbman_swp_dqrr_consume(struct qbman_swp *s, const struct dpaa2_dq *dq)
{
 qbman_write_register(s, QBMAN_CINH_SWP_DCAP, QBMAN_IDX_FROM_DQRR(dq));
}
