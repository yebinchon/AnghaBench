
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int valid_bit; void* storage; int available; } ;
struct qbman_swp {TYPE_2__ vdq; TYPE_1__* desc; } ;
struct qbman_pull_desc {int verb; scalar_t__ rsp_addr_virt; int rsp_addr; int dq_src; int tok; int numf; } ;
struct TYPE_3__ {int qman_version; } ;


 int EBUSY ;
 int QBMAN_CENA_SWP_VDQCR ;
 int QBMAN_CENA_SWP_VDQCR_MEM ;
 int QBMAN_CINH_SWP_VDQCR_RT ;
 int QB_VALID_BIT ;
 int QMAN_DQ_TOKEN_VALID ;
 int QMAN_REV_5000 ;
 int QMAN_REV_MASK ;
 int QMAN_RT_MODE ;
 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int dma_wmb () ;
 struct qbman_pull_desc* qbman_get_cmd (struct qbman_swp*,int ) ;
 int qbman_write_register (struct qbman_swp*,int ,int ) ;

int qbman_swp_pull(struct qbman_swp *s, struct qbman_pull_desc *d)
{
 struct qbman_pull_desc *p;

 if (!atomic_dec_and_test(&s->vdq.available)) {
  atomic_inc(&s->vdq.available);
  return -EBUSY;
 }
 s->vdq.storage = (void *)(uintptr_t)d->rsp_addr_virt;
 if ((s->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000)
  p = qbman_get_cmd(s, QBMAN_CENA_SWP_VDQCR);
 else
  p = qbman_get_cmd(s, QBMAN_CENA_SWP_VDQCR_MEM);
 p->numf = d->numf;
 p->tok = QMAN_DQ_TOKEN_VALID;
 p->dq_src = d->dq_src;
 p->rsp_addr = d->rsp_addr;
 p->rsp_addr_virt = d->rsp_addr_virt;

 if ((s->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000) {
  dma_wmb();

  p->verb = d->verb | s->vdq.valid_bit;
  s->vdq.valid_bit ^= QB_VALID_BIT;
 } else {
  p->verb = d->verb | s->vdq.valid_bit;
  s->vdq.valid_bit ^= QB_VALID_BIT;
  dma_wmb();
  qbman_write_register(s, QBMAN_CINH_SWP_VDQCR_RT, QMAN_RT_MODE);
 }

 return 0;
}
