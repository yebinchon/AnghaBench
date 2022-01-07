
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct esas2r_request {int comp_list; int func_rsp; TYPE_3__* vrq; struct esas2r_request* req_stat; int req_list; } ;
struct TYPE_4__ {scalar_t__ virt_addr; } ;
struct esas2r_adapter {int last_read; int list_size; int queue_lock; struct esas2r_request** req_table; TYPE_1__ outbound_list_md; int * outbound_copy; } ;
struct atto_vda_ob_rsp {int handle; int func_rsp; struct esas2r_request* req_stat; } ;
struct TYPE_5__ {int handle; scalar_t__ function; } ;
struct TYPE_6__ {TYPE_2__ scsi; } ;


 int LIST_HEAD (int ) ;
 size_t LOWORD (int) ;
 int MU_OLC_WRT_PTR ;
 scalar_t__ VDA_FUNC_SCSI ;
 int comp_list ;
 int esas2r_bugon () ;
 int esas2r_comp_list_drain (struct esas2r_adapter*,int *) ;
 int esas2r_handle_outbound_rsp_err (struct esas2r_adapter*,struct esas2r_request*,struct atto_vda_ob_rsp*) ;
 int esas2r_local_reset_adapter (struct esas2r_adapter*) ;
 int esas2r_trace (char*,...) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 int le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int memcpy (int *,int *,int) ;
 size_t num_ae_requests ;
 size_t num_requests ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void esas2r_get_outbound_responses(struct esas2r_adapter *a)
{
 struct atto_vda_ob_rsp *rsp;
 u32 rspput_ptr;
 u32 rspget_ptr;
 struct esas2r_request *rq;
 u32 handle;
 unsigned long flags;

 LIST_HEAD(comp_list);

 esas2r_trace_enter();

 spin_lock_irqsave(&a->queue_lock, flags);


 rspput_ptr = le32_to_cpu(*a->outbound_copy) & MU_OLC_WRT_PTR;
 rspget_ptr = a->last_read;

 esas2r_trace("rspput_ptr: %x, rspget_ptr: %x", rspput_ptr, rspget_ptr);


 if (unlikely(rspget_ptr == rspput_ptr)) {
  spin_unlock_irqrestore(&a->queue_lock, flags);
  esas2r_trace_exit();
  return;
 }


 if (unlikely(rspput_ptr >= a->list_size)) {
  spin_unlock_irqrestore(&a->queue_lock, flags);
  esas2r_bugon();
  esas2r_local_reset_adapter(a);
  esas2r_trace_exit();
  return;
 }

 do {
  rspget_ptr++;

  if (rspget_ptr >= a->list_size)
   rspget_ptr = 0;

  rsp = (struct atto_vda_ob_rsp *)a->outbound_list_md.virt_addr
        + rspget_ptr;

  handle = rsp->handle;


  if (unlikely(LOWORD(handle) == 0
        || LOWORD(handle) > num_requests +
        num_ae_requests + 1)) {
   esas2r_bugon();
   continue;
  }


  rq = a->req_table[LOWORD(handle)];

  if (unlikely(rq == ((void*)0) || rq->vrq->scsi.handle != handle)) {
   esas2r_bugon();
   continue;
  }

  list_del(&rq->req_list);


  rq->req_stat = rsp->req_stat;

  esas2r_trace("handle: %x", handle);
  esas2r_trace("rq: %p", rq);
  esas2r_trace("req_status: %x", rq->req_stat);

  if (likely(rq->vrq->scsi.function == VDA_FUNC_SCSI)) {
   esas2r_handle_outbound_rsp_err(a, rq, rsp);
  } else {




   memcpy(&rq->func_rsp, &rsp->func_rsp,
          sizeof(rsp->func_rsp));
  }


  list_add_tail(&rq->comp_list, &comp_list);

 } while (rspget_ptr != rspput_ptr);

 a->last_read = rspget_ptr;
 spin_unlock_irqrestore(&a->queue_lock, flags);

 esas2r_comp_list_drain(a, &comp_list);
 esas2r_trace_exit();
}
