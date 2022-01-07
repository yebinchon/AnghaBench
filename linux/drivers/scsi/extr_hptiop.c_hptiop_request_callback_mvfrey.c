
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hptiop_hba {int msg_done; TYPE_1__* reqs; } ;
struct TYPE_4__ {int result; } ;
struct hpt_iop_request_scsi_command {TYPE_2__ header; } ;
struct TYPE_3__ {struct hpt_iop_request_scsi_command* req_virt; } ;


 int IOPMU_QUEUE_REQUEST_RESULT_BIT ;



 int IOP_RESULT_SUCCESS ;
 int hptiop_finish_scsi_req (struct hptiop_hba*,int,struct hpt_iop_request_scsi_command*) ;
 int likely (int) ;

__attribute__((used)) static void hptiop_request_callback_mvfrey(struct hptiop_hba *hba, u32 _tag)
{
 u32 req_type = _tag & 0xf;
 struct hpt_iop_request_scsi_command *req;

 switch (req_type) {
 case 130:
 case 128:
  hba->msg_done = 1;
  break;

 case 129:
  req = hba->reqs[(_tag >> 4) & 0xff].req_virt;
  if (likely(_tag & IOPMU_QUEUE_REQUEST_RESULT_BIT))
   req->header.result = IOP_RESULT_SUCCESS;
  hptiop_finish_scsi_req(hba, (_tag >> 4) & 0xff, req);
  break;

 default:
  break;
 }
}
