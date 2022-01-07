
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_3__ {int code; int data; } ;
struct TYPE_4__ {TYPE_1__ aen; } ;
struct qla_work_evt {TYPE_2__ u; } ;
typedef enum fc_host_event_code { ____Placeholder_fc_host_event_code } fc_host_event_code ;


 int QLA_EVT_AEN ;
 int QLA_FUNCTION_FAILED ;
 struct qla_work_evt* qla2x00_alloc_work (struct scsi_qla_host*,int ) ;
 int qla2x00_post_work (struct scsi_qla_host*,struct qla_work_evt*) ;

int
qla2x00_post_aen_work(struct scsi_qla_host *vha, enum fc_host_event_code code,
    u32 data)
{
 struct qla_work_evt *e;

 e = qla2x00_alloc_work(vha, QLA_EVT_AEN);
 if (!e)
  return QLA_FUNCTION_FAILED;

 e->u.aen.code = code;
 e->u.aen.data = data;
 return qla2x00_post_work(vha, e);
}
