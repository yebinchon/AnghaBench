
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ qpairs_rsp_created; } ;
struct scsi_qla_host {TYPE_1__ flags; } ;
struct rsp_que {int options; } ;


 int BIT_0 ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int qla25xx_free_rsp_que (struct scsi_qla_host*,struct rsp_que*) ;
 int qla25xx_init_rsp_que (struct scsi_qla_host*,struct rsp_que*) ;

int
qla25xx_delete_rsp_que(struct scsi_qla_host *vha, struct rsp_que *rsp)
{
 int ret = QLA_SUCCESS;

 if (rsp && vha->flags.qpairs_rsp_created) {
  rsp->options |= BIT_0;
  ret = qla25xx_init_rsp_que(vha, rsp);
  if (ret != QLA_SUCCESS)
   return QLA_FUNCTION_FAILED;

  qla25xx_free_rsp_que(vha, rsp);
 }

 return ret;
}
