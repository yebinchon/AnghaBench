
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_8__ {struct hpt_iop_request_header* req_virt; } ;
struct TYPE_6__ {TYPE_4__ internal_req; } ;
struct TYPE_7__ {TYPE_2__ mvfrey; } ;
struct hptiop_hba {scalar_t__ msg_done; TYPE_3__ u; TYPE_1__* ops; } ;
struct hpt_iop_request_header {int flags; } ;
struct TYPE_5__ {int (* post_req ) (struct hptiop_hba*,TYPE_4__*) ;} ;


 int IOP_REQUEST_FLAG_SYNC_REQUEST ;
 int cpu_to_le32 (int ) ;
 int iop_intr_mvfrey (struct hptiop_hba*) ;
 int msleep (int) ;
 int stub1 (struct hptiop_hba*,TYPE_4__*) ;

__attribute__((used)) static int iop_send_sync_request_mvfrey(struct hptiop_hba *hba,
     u32 size_bits, u32 millisec)
{
 struct hpt_iop_request_header *reqhdr =
  hba->u.mvfrey.internal_req.req_virt;
 u32 i;

 hba->msg_done = 0;
 reqhdr->flags |= cpu_to_le32(IOP_REQUEST_FLAG_SYNC_REQUEST);
 hba->ops->post_req(hba, &(hba->u.mvfrey.internal_req));

 for (i = 0; i < millisec; i++) {
  iop_intr_mvfrey(hba);
  if (hba->msg_done)
   break;
  msleep(1);
 }
 return hba->msg_done ? 0 : -1;
}
