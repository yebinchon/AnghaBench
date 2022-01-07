
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int valid_bit; } ;
struct qbman_swp {TYPE_2__ mc; TYPE_1__* desc; } ;
struct TYPE_3__ {int qman_version; } ;


 int QBMAN_CINH_SWP_CR_RT ;
 int QMAN_REV_5000 ;
 int QMAN_REV_MASK ;
 int QMAN_RT_MODE ;
 int dma_wmb () ;
 int qbman_write_register (struct qbman_swp*,int ,int ) ;

void qbman_swp_mc_submit(struct qbman_swp *p, void *cmd, u8 cmd_verb)
{
 u8 *v = cmd;

 if ((p->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000) {
  dma_wmb();
  *v = cmd_verb | p->mc.valid_bit;
 } else {
  *v = cmd_verb | p->mc.valid_bit;
  dma_wmb();
  qbman_write_register(p, QBMAN_CINH_SWP_CR_RT, QMAN_RT_MODE);
 }
}
