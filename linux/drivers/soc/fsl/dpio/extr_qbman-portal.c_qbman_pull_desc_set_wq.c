
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qbman_pull_desc {int verb; int dq_src; } ;
typedef enum qbman_pull_type_e { ____Placeholder_qbman_pull_type_e } qbman_pull_type_e ;


 int QB_VDQCR_VERB_DCT_SHIFT ;
 int QB_VDQCR_VERB_DT_SHIFT ;
 int cpu_to_le32 (int ) ;
 int qb_pull_dt_workqueue ;

void qbman_pull_desc_set_wq(struct qbman_pull_desc *d, u32 wqid,
       enum qbman_pull_type_e dct)
{
 d->verb |= dct << QB_VDQCR_VERB_DCT_SHIFT;
 d->verb |= qb_pull_dt_workqueue << QB_VDQCR_VERB_DT_SHIFT;
 d->dq_src = cpu_to_le32(wqid);
}
