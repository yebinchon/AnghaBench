
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qbman_eq_desc {int verb; int tgtid; } ;


 int QB_ENQUEUE_CMD_TARGET_TYPE_SHIFT ;
 int cpu_to_le32 (int ) ;

void qbman_eq_desc_set_fq(struct qbman_eq_desc *d, u32 fqid)
{
 d->verb &= ~(1 << QB_ENQUEUE_CMD_TARGET_TYPE_SHIFT);
 d->tgtid = cpu_to_le32(fqid);
}
