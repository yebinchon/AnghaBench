
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qbman_swp {int sdq; } ;


 int QBMAN_CINH_SWP_SDQCR ;
 int QB_SDQCR_SRC_MASK ;
 int QB_SDQCR_SRC_SHIFT ;
 int WARN_ON (int) ;
 int qbman_write_register (struct qbman_swp*,int ,int) ;

void qbman_swp_push_set(struct qbman_swp *s, u8 channel_idx, int enable)
{
 u16 dqsrc;

 WARN_ON(channel_idx > 15);
 if (enable)
  s->sdq |= 1 << channel_idx;
 else
  s->sdq &= ~(1 << channel_idx);




 dqsrc = (s->sdq >> QB_SDQCR_SRC_SHIFT) & QB_SDQCR_SRC_MASK;
 if (dqsrc != 0)
  qbman_write_register(s, QBMAN_CINH_SWP_SDQCR, s->sdq);
 else
  qbman_write_register(s, QBMAN_CINH_SWP_SDQCR, 0);
}
