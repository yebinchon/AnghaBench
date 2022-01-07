
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dpc_flags; } ;
struct qla_work_evt {int dummy; } ;


 int QLA_EVT_RELOGIN ;
 int QLA_FUNCTION_FAILED ;
 int RELOGIN_NEEDED ;
 struct qla_work_evt* qla2x00_alloc_work (struct scsi_qla_host*,int ) ;
 int qla2x00_post_work (struct scsi_qla_host*,struct qla_work_evt*) ;
 int set_bit (int ,int *) ;

int qla24xx_post_relogin_work(struct scsi_qla_host *vha)
{
 struct qla_work_evt *e;

 e = qla2x00_alloc_work(vha, QLA_EVT_RELOGIN);

 if (!e) {
  set_bit(RELOGIN_NEEDED, &vha->dpc_flags);
  return QLA_FUNCTION_FAILED;
 }

 return qla2x00_post_work(vha, e);
}
