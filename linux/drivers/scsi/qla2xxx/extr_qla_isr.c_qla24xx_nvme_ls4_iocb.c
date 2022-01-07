
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct scsi_qla_host {int dummy; } ;
struct req_que {int dummy; } ;
struct pt_ls4_request {int status; } ;
struct TYPE_4__ {int (* done ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ srb_t ;


 int le16_to_cpu (int ) ;
 TYPE_1__* qla2x00_get_sp_from_handle (struct scsi_qla_host*,char const*,struct req_que*,struct pt_ls4_request*) ;
 int stub1 (TYPE_1__*,int ) ;

void qla24xx_nvme_ls4_iocb(struct scsi_qla_host *vha,
    struct pt_ls4_request *pkt, struct req_que *req)
{
 srb_t *sp;
 const char func[] = "LS4_IOCB";
 uint16_t comp_status;

 sp = qla2x00_get_sp_from_handle(vha, func, req, pkt);
 if (!sp)
  return;

 comp_status = le16_to_cpu(pkt->status);
 sp->done(sp, comp_status);
}
