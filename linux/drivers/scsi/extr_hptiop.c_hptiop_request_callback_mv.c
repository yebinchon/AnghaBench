
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct hptiop_hba {int msg_done; TYPE_2__* reqs; } ;
struct TYPE_3__ {int result; } ;
struct hpt_iop_request_scsi_command {TYPE_1__ header; } ;
struct TYPE_4__ {struct hpt_iop_request_scsi_command* req_virt; } ;


 int BUG_ON (int) ;



 int IOP_RESULT_SUCCESS ;
 int MVIOP_MU_QUEUE_REQUEST_RESULT_BIT ;
 int MVIOP_MU_QUEUE_REQUEST_RETURN_CONTEXT ;
 int cpu_to_le32 (int ) ;
 int dprintk (char*,int) ;
 int hptiop_finish_scsi_req (struct hptiop_hba*,int,struct hpt_iop_request_scsi_command*) ;
 int likely (int) ;

__attribute__((used)) static void hptiop_request_callback_mv(struct hptiop_hba *hba, u64 tag)
{
 u32 req_type = (tag >> 5) & 0x7;
 struct hpt_iop_request_scsi_command *req;

 dprintk("hptiop_request_callback_mv: tag=%llx\n", tag);

 BUG_ON((tag & MVIOP_MU_QUEUE_REQUEST_RETURN_CONTEXT) == 0);

 switch (req_type) {
 case 130:
 case 128:
  hba->msg_done = 1;
  break;

 case 129:
  req = hba->reqs[tag >> 8].req_virt;
  if (likely(tag & MVIOP_MU_QUEUE_REQUEST_RESULT_BIT))
   req->header.result = cpu_to_le32(IOP_RESULT_SUCCESS);

  hptiop_finish_scsi_req(hba, tag>>8, req);
  break;

 default:
  break;
 }
}
