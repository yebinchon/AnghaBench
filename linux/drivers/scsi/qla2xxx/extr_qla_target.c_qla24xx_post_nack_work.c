
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_qla_host {int dummy; } ;
struct TYPE_3__ {int type; int iocb; int * fcport; } ;
struct TYPE_4__ {TYPE_1__ nack; } ;
struct qla_work_evt {TYPE_2__ u; } ;
struct imm_ntfy_from_isp {int dummy; } ;
typedef int fc_port_t ;


 int QLA_EVT_NACK ;
 int QLA_FUNCTION_FAILED ;
 int memcpy (int ,struct imm_ntfy_from_isp*,int) ;
 struct qla_work_evt* qla2x00_alloc_work (struct scsi_qla_host*,int ) ;
 int qla2x00_post_work (struct scsi_qla_host*,struct qla_work_evt*) ;

__attribute__((used)) static int qla24xx_post_nack_work(struct scsi_qla_host *vha, fc_port_t *fcport,
 struct imm_ntfy_from_isp *ntfy, int type)
{
 struct qla_work_evt *e;

 e = qla2x00_alloc_work(vha, QLA_EVT_NACK);
 if (!e)
  return QLA_FUNCTION_FAILED;

 e->u.nack.fcport = fcport;
 e->u.nack.type = type;
 memcpy(e->u.nack.iocb, ntfy, sizeof(struct imm_ntfy_from_isp));
 return qla2x00_post_work(vha, e);
}
