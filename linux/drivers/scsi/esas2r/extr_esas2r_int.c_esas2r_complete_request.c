
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct esas2r_request {scalar_t__ req_stat; int (* comp_cb ) (struct esas2r_adapter*,struct esas2r_request*) ;TYPE_3__* vrq; int (* interrupt_cb ) (struct esas2r_adapter*,struct esas2r_request*) ;} ;
struct esas2r_adapter {int flags; } ;
struct TYPE_5__ {scalar_t__ function; } ;
struct TYPE_4__ {scalar_t__ sub_func; } ;
struct TYPE_6__ {TYPE_2__ scsi; TYPE_1__ flash; } ;


 int AF_FLASHING ;
 scalar_t__ RS_PENDING ;
 scalar_t__ RS_SUCCESS ;
 scalar_t__ VDA_FLASH_COMMIT ;
 scalar_t__ VDA_FUNC_FLASH ;
 scalar_t__ VDA_FUNC_SCSI ;
 int clear_bit (int ,int *) ;
 int esas2r_check_req_rsp_sense (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_log_request_failure (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_start_request (struct esas2r_adapter*,struct esas2r_request*) ;
 scalar_t__ likely (int) ;
 int stub1 (struct esas2r_adapter*,struct esas2r_request*) ;
 int stub2 (struct esas2r_adapter*,struct esas2r_request*) ;
 scalar_t__ unlikely (int) ;

void esas2r_complete_request(struct esas2r_adapter *a,
        struct esas2r_request *rq)
{
 if (rq->vrq->scsi.function == VDA_FUNC_FLASH
     && rq->vrq->flash.sub_func == VDA_FLASH_COMMIT)
  clear_bit(AF_FLASHING, &a->flags);



 if (rq->interrupt_cb) {
  (*rq->interrupt_cb)(a, rq);

  if (rq->req_stat == RS_PENDING) {
   esas2r_start_request(a, rq);
   return;
  }
 }

 if (likely(rq->vrq->scsi.function == VDA_FUNC_SCSI)
     && unlikely(rq->req_stat != RS_SUCCESS)) {
  esas2r_check_req_rsp_sense(a, rq);
  esas2r_log_request_failure(a, rq);
 }

 (*rq->comp_cb)(a, rq);
}
