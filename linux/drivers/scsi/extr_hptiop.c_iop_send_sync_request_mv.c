
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ internal_req_phy; struct hpt_iop_request_header* internal_req; } ;
struct TYPE_3__ {TYPE_2__ mv; } ;
struct hptiop_hba {scalar_t__ msg_done; TYPE_1__ u; } ;
struct hpt_iop_request_header {int flags; } ;


 int IOP_REQUEST_FLAG_SYNC_REQUEST ;
 scalar_t__ MVIOP_MU_QUEUE_ADDR_HOST_BIT ;
 int cpu_to_le32 (int ) ;
 int iop_intr_mv (struct hptiop_hba*) ;
 int msleep (int) ;
 int mv_inbound_write (scalar_t__,struct hptiop_hba*) ;

__attribute__((used)) static int iop_send_sync_request_mv(struct hptiop_hba *hba,
     u32 size_bits, u32 millisec)
{
 struct hpt_iop_request_header *reqhdr = hba->u.mv.internal_req;
 u32 i;

 hba->msg_done = 0;
 reqhdr->flags |= cpu_to_le32(IOP_REQUEST_FLAG_SYNC_REQUEST);
 mv_inbound_write(hba->u.mv.internal_req_phy |
   MVIOP_MU_QUEUE_ADDR_HOST_BIT | size_bits, hba);

 for (i = 0; i < millisec; i++) {
  iop_intr_mv(hba);
  if (hba->msg_done)
   return 0;
  msleep(1);
 }
 return -1;
}
