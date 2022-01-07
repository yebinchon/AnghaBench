
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct scsi_qla_host {int dummy; } ;
struct qla_qpair {int qp_lock_ptr; } ;


 int __qla2x00_marker (struct scsi_qla_host*,struct qla_qpair*,int ,int ,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

int
qla2x00_marker(struct scsi_qla_host *vha, struct qla_qpair *qpair,
    uint16_t loop_id, uint64_t lun, uint8_t type)
{
 int ret;
 unsigned long flags = 0;

 spin_lock_irqsave(qpair->qp_lock_ptr, flags);
 ret = __qla2x00_marker(vha, qpair, loop_id, lun, type);
 spin_unlock_irqrestore(qpair->qp_lock_ptr, flags);

 return (ret);
}
