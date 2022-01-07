
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sub_func; } ;
struct TYPE_4__ {scalar_t__ function; } ;
struct esas2r_request {int req_list; TYPE_2__ flash; struct esas2r_request* vrq; TYPE_1__ scsi; TYPE_3__* vrq_md; } ;
struct esas2r_adapter {int active_list; int flags; } ;
struct TYPE_6__ {struct esas2r_request* phys_addr; } ;


 int AF_FLASHING ;
 scalar_t__ VDA_FLASH_COMMIT ;
 scalar_t__ VDA_FUNC_FLASH ;
 int esas2r_start_vda_request (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_trace (char*,struct esas2r_request*) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 int list_add_tail (int *,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

void esas2r_local_start_request(struct esas2r_adapter *a,
    struct esas2r_request *rq)
{
 esas2r_trace_enter();
 esas2r_trace("rq=%p", rq);
 esas2r_trace("rq->vrq:%p", rq->vrq);
 esas2r_trace("rq->vrq_md->phys_addr:%x", rq->vrq_md->phys_addr);

 if (unlikely(rq->vrq->scsi.function == VDA_FUNC_FLASH
       && rq->vrq->flash.sub_func == VDA_FLASH_COMMIT))
  set_bit(AF_FLASHING, &a->flags);

 list_add_tail(&rq->req_list, &a->active_list);
 esas2r_start_vda_request(a, rq);
 esas2r_trace_exit();
 return;
}
