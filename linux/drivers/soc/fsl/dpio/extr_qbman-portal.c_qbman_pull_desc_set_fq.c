
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qbman_pull_desc {int verb; int dq_src; } ;


 int QB_VDQCR_VERB_DCT_SHIFT ;
 int QB_VDQCR_VERB_DT_SHIFT ;
 int cpu_to_le32 (int ) ;
 int qb_pull_dt_framequeue ;

void qbman_pull_desc_set_fq(struct qbman_pull_desc *d, u32 fqid)
{
 d->verb |= 1 << QB_VDQCR_VERB_DCT_SHIFT;
 d->verb |= qb_pull_dt_framequeue << QB_VDQCR_VERB_DT_SHIFT;
 d->dq_src = cpu_to_le32(fqid);
}
