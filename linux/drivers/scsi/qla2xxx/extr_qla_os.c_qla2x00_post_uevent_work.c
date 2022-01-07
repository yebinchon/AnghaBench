
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_3__ {int code; } ;
struct TYPE_4__ {TYPE_1__ uevent; } ;
struct qla_work_evt {TYPE_2__ u; } ;


 int QLA_EVT_UEVENT ;
 int QLA_FUNCTION_FAILED ;
 struct qla_work_evt* qla2x00_alloc_work (struct scsi_qla_host*,int ) ;
 int qla2x00_post_work (struct scsi_qla_host*,struct qla_work_evt*) ;

int
qla2x00_post_uevent_work(struct scsi_qla_host *vha, u32 code)
{
 struct qla_work_evt *e;

 e = qla2x00_alloc_work(vha, QLA_EVT_UEVENT);
 if (!e)
  return QLA_FUNCTION_FAILED;

 e->u.uevent.code = code;
 return qla2x00_post_work(vha, e);
}
