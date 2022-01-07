
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_3__ {int count; int mbx; int evtcode; } ;
struct TYPE_4__ {TYPE_1__ aenfx; } ;
struct qla_work_evt {TYPE_2__ u; } ;


 int QLA_EVT_AENFX ;
 int QLA_FUNCTION_FAILED ;
 int memcpy (int ,int *,int) ;
 struct qla_work_evt* qla2x00_alloc_work (struct scsi_qla_host*,int ) ;
 int qla2x00_post_work (struct scsi_qla_host*,struct qla_work_evt*) ;

int
qlafx00_post_aenfx_work(struct scsi_qla_host *vha, uint32_t evtcode,
   uint32_t *data, int cnt)
{
 struct qla_work_evt *e;

 e = qla2x00_alloc_work(vha, QLA_EVT_AENFX);
 if (!e)
  return QLA_FUNCTION_FAILED;

 e->u.aenfx.evtcode = evtcode;
 e->u.aenfx.count = cnt;
 memcpy(e->u.aenfx.mbx, data, sizeof(*data) * cnt);
 return qla2x00_post_work(vha, e);
}
