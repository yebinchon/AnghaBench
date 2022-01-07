
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_portal {int p; struct qman_fq* vdqcr_owned; } ;
struct qman_fq {int dummy; } ;


 int EBUSY ;
 int QMAN_FQ_STATE_VDQCR ;
 scalar_t__ fq_isset (struct qman_fq*,int ) ;
 int fq_set (struct qman_fq*,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int qm_dqrr_vdqcr_set (int *,int ) ;

__attribute__((used)) static int set_p_vdqcr(struct qman_portal *p, struct qman_fq *fq, u32 vdqcr)
{
 unsigned long irqflags;
 int ret = -EBUSY;

 local_irq_save(irqflags);
 if (p->vdqcr_owned)
  goto out;
 if (fq_isset(fq, QMAN_FQ_STATE_VDQCR))
  goto out;

 fq_set(fq, QMAN_FQ_STATE_VDQCR);
 p->vdqcr_owned = fq;
 qm_dqrr_vdqcr_set(&p->p, vdqcr);
 ret = 0;
out:
 local_irq_restore(irqflags);
 return ret;
}
