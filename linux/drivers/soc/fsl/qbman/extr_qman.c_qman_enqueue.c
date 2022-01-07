
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qman_portal {int p; scalar_t__ use_eqcr_ci_stashing; } ;
struct qman_fq {int fqid; } ;
struct qm_fd {int dummy; } ;
struct qm_eqcr_entry {struct qm_fd fd; int tag; } ;


 int QM_EQCR_VERB_CMD_ENQUEUE ;
 int cpu_to_be32 (int ) ;
 int fq_to_tag (struct qman_fq*) ;
 struct qman_portal* get_affine_portal () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int put_affine_portal () ;
 int qm_eqcr_get_avail (int *) ;
 int qm_eqcr_pvb_commit (int *,int ) ;
 struct qm_eqcr_entry* qm_eqcr_start_no_stash (int *) ;
 struct qm_eqcr_entry* qm_eqcr_start_stash (int *) ;
 int qm_fqid_set (struct qm_eqcr_entry*,int ) ;
 scalar_t__ unlikely (int) ;
 int update_eqcr_ci (struct qman_portal*,int) ;

int qman_enqueue(struct qman_fq *fq, const struct qm_fd *fd)
{
 struct qman_portal *p;
 struct qm_eqcr_entry *eq;
 unsigned long irqflags;
 u8 avail;

 p = get_affine_portal();
 local_irq_save(irqflags);

 if (p->use_eqcr_ci_stashing) {




  eq = qm_eqcr_start_stash(&p->p);
 } else {




  avail = qm_eqcr_get_avail(&p->p);
  if (avail < 2)
   update_eqcr_ci(p, avail);
  eq = qm_eqcr_start_no_stash(&p->p);
 }

 if (unlikely(!eq))
  goto out;

 qm_fqid_set(eq, fq->fqid);
 eq->tag = cpu_to_be32(fq_to_tag(fq));
 eq->fd = *fd;

 qm_eqcr_pvb_commit(&p->p, QM_EQCR_VERB_CMD_ENQUEUE);
out:
 local_irq_restore(irqflags);
 put_affine_portal();
 return 0;
}
