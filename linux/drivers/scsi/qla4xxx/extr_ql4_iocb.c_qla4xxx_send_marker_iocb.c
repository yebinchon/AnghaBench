
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct scsi_qla_host {int hardware_lock; TYPE_2__* isp_ops; } ;
struct queue_entry {int dummy; } ;
struct TYPE_3__ {int entryCount; int entryType; } ;
struct qla4_marker_entry {int lun; void* modifier; void* target; TYPE_1__ hdr; } ;
struct ddb_entry {int fw_ddb_index; } ;
struct TYPE_4__ {int (* queue_iocb ) (struct scsi_qla_host*) ;} ;


 int ET_MARKER ;
 int QLA_ERROR ;
 scalar_t__ QLA_SUCCESS ;
 void* cpu_to_le16 (int ) ;
 int int_to_scsilun (int ,int *) ;
 scalar_t__ qla4xxx_get_req_pkt (struct scsi_qla_host*,struct queue_entry**) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct scsi_qla_host*) ;
 int wmb () ;

int qla4xxx_send_marker_iocb(struct scsi_qla_host *ha,
 struct ddb_entry *ddb_entry, uint64_t lun, uint16_t mrkr_mod)
{
 struct qla4_marker_entry *marker_entry;
 unsigned long flags = 0;
 uint8_t status = QLA_SUCCESS;


 spin_lock_irqsave(&ha->hardware_lock, flags);


 if (qla4xxx_get_req_pkt(ha, (struct queue_entry **) &marker_entry) !=
     QLA_SUCCESS) {
  status = QLA_ERROR;
  goto exit_send_marker;
 }


 marker_entry->hdr.entryType = ET_MARKER;
 marker_entry->hdr.entryCount = 1;
 marker_entry->target = cpu_to_le16(ddb_entry->fw_ddb_index);
 marker_entry->modifier = cpu_to_le16(mrkr_mod);
 int_to_scsilun(lun, &marker_entry->lun);
 wmb();


 ha->isp_ops->queue_iocb(ha);

exit_send_marker:
 spin_unlock_irqrestore(&ha->hardware_lock, flags);
 return status;
}
