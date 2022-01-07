
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QM_CI_SCHED_CFG_BMAN_W ;
 int QM_CI_SCHED_CFG_RW_W ;
 int QM_CI_SCHED_CFG_SRCCIV ;
 int QM_CI_SCHED_CFG_SRCCIV_EN ;
 int QM_CI_SCHED_CFG_SRQ_W ;
 int REG_CI_SCHED_CFG ;
 int qm_ccsr_out (int ,int) ;

__attribute__((used)) static void qm_set_corenet_initiator(void)
{
 qm_ccsr_out(REG_CI_SCHED_CFG, QM_CI_SCHED_CFG_SRCCIV_EN |
      (QM_CI_SCHED_CFG_SRCCIV << 24) |
      (QM_CI_SCHED_CFG_SRQ_W << 8) |
      (QM_CI_SCHED_CFG_RW_W << 4) |
      QM_CI_SCHED_CFG_BMAN_W);
}
