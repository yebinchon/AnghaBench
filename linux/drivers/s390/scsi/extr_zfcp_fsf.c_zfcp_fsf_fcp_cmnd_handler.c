
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct zfcp_fsf_req {int status; TYPE_6__* adapter; TYPE_5__* qtcb; struct scsi_cmnd* data; } ;
struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;int * host_scribble; int device; } ;
struct fcp_resp_with_ext {int dummy; } ;
struct TYPE_12__ {int abort_lock; } ;
struct TYPE_8__ {struct fcp_resp_with_ext iu; } ;
struct TYPE_9__ {TYPE_2__ fcp_rsp; } ;
struct TYPE_10__ {TYPE_3__ io; } ;
struct TYPE_7__ {int fsf_status; } ;
struct TYPE_11__ {TYPE_4__ bottom; TYPE_1__ header; } ;


 int BUILD_BUG_ON (int) ;
 int DID_ERROR ;
 int DID_TRANSPORT_DISRUPTED ;


 int FSF_FCP_RSP_SIZE ;



 int ZFCP_STATUS_FSFREQ_ERROR ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int set_host_byte (struct scsi_cmnd*,int ) ;
 int stub1 (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;
 int zfcp_dbf_scsi_result (struct scsi_cmnd*,struct zfcp_fsf_req*) ;
 int zfcp_fc_eval_fcp_rsp (struct fcp_resp_with_ext*,struct scsi_cmnd*) ;
 int zfcp_fsf_fcp_handler_common (struct zfcp_fsf_req*,int ) ;
 int zfcp_fsf_req_trace (struct zfcp_fsf_req*,struct scsi_cmnd*) ;
 int zfcp_scsi_dif_sense_error (struct scsi_cmnd*,int) ;

__attribute__((used)) static void zfcp_fsf_fcp_cmnd_handler(struct zfcp_fsf_req *req)
{
 struct scsi_cmnd *scpnt;
 struct fcp_resp_with_ext *fcp_rsp;
 unsigned long flags;

 read_lock_irqsave(&req->adapter->abort_lock, flags);

 scpnt = req->data;
 if (unlikely(!scpnt)) {
  read_unlock_irqrestore(&req->adapter->abort_lock, flags);
  return;
 }

 zfcp_fsf_fcp_handler_common(req, scpnt->device);

 if (unlikely(req->status & ZFCP_STATUS_FSFREQ_ERROR)) {
  set_host_byte(scpnt, DID_TRANSPORT_DISRUPTED);
  goto skip_fsfstatus;
 }

 switch (req->qtcb->header.fsf_status) {
 case 130:
 case 129:
  set_host_byte(scpnt, DID_ERROR);
  goto skip_fsfstatus;
 case 131:
  zfcp_scsi_dif_sense_error(scpnt, 0x1);
  goto skip_fsfstatus;
 case 132:
  zfcp_scsi_dif_sense_error(scpnt, 0x2);
  goto skip_fsfstatus;
 case 128:
  zfcp_scsi_dif_sense_error(scpnt, 0x3);
  goto skip_fsfstatus;
 }
 BUILD_BUG_ON(sizeof(struct fcp_resp_with_ext) > FSF_FCP_RSP_SIZE);
 fcp_rsp = &req->qtcb->bottom.io.fcp_rsp.iu;
 zfcp_fc_eval_fcp_rsp(fcp_rsp, scpnt);

skip_fsfstatus:
 zfcp_fsf_req_trace(req, scpnt);
 zfcp_dbf_scsi_result(scpnt, req);

 scpnt->host_scribble = ((void*)0);
 (scpnt->scsi_done) (scpnt);






 read_unlock_irqrestore(&req->adapter->abort_lock, flags);
}
