
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ qpairs_req_created; } ;
struct scsi_qla_host {TYPE_1__ flags; } ;
struct req_que {int options; } ;


 int BIT_0 ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int qla25xx_free_req_que (struct scsi_qla_host*,struct req_que*) ;
 int qla25xx_init_req_que (struct scsi_qla_host*,struct req_que*) ;

int
qla25xx_delete_req_que(struct scsi_qla_host *vha, struct req_que *req)
{
 int ret = QLA_SUCCESS;

 if (req && vha->flags.qpairs_req_created) {
  req->options |= BIT_0;
  ret = qla25xx_init_req_que(vha, req);
  if (ret != QLA_SUCCESS)
   return QLA_FUNCTION_FAILED;

  qla25xx_free_req_que(vha, req);
 }

 return ret;
}
