
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_3__ {int mb; } ;
struct TYPE_4__ {TYPE_1__ idc_ack; } ;
struct qla_work_evt {TYPE_2__ u; } ;


 int QLA_EVT_IDC_ACK ;
 int QLA_FUNCTION_FAILED ;
 int QLA_IDC_ACK_REGS ;
 int memcpy (int ,int *,int) ;
 struct qla_work_evt* qla2x00_alloc_work (struct scsi_qla_host*,int ) ;
 int qla2x00_post_work (struct scsi_qla_host*,struct qla_work_evt*) ;

int
qla2x00_post_idc_ack_work(struct scsi_qla_host *vha, uint16_t *mb)
{
 struct qla_work_evt *e;

 e = qla2x00_alloc_work(vha, QLA_EVT_IDC_ACK);
 if (!e)
  return QLA_FUNCTION_FAILED;

 memcpy(e->u.idc_ack.mb, mb, QLA_IDC_ACK_REGS * sizeof(uint16_t));
 return qla2x00_post_work(vha, e);
}
