
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qbman_eq_desc {int verb; int qpri; int qdbin; int tgtid; } ;


 int QB_ENQUEUE_CMD_TARGET_TYPE_SHIFT ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;

void qbman_eq_desc_set_qd(struct qbman_eq_desc *d, u32 qdid,
     u32 qd_bin, u32 qd_prio)
{
 d->verb |= 1 << QB_ENQUEUE_CMD_TARGET_TYPE_SHIFT;
 d->tgtid = cpu_to_le32(qdid);
 d->qdbin = cpu_to_le16(qd_bin);
 d->qpri = qd_prio;
}
