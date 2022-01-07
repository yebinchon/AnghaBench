
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int dev_index; int scan_generation; } ;
struct TYPE_10__ {TYPE_4__ mgt_rsp; } ;
struct esas2r_request {scalar_t__ req_stat; TYPE_5__ func_rsp; TYPE_3__* vda_rsp_data; scalar_t__ interrupt_cx; } ;
struct esas2r_disc_context {int dev_ix; int curr_virt_id; int curr_phys_id; int flags; int state; int dev_addr_type; int scan_gen; } ;
struct esas2r_adapter {int mem_lock; } ;
struct atto_vda_devinfo {int phys_target_id; int features; int target_id; } ;
struct TYPE_6__ {struct atto_vda_devinfo dev_info; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
struct TYPE_8__ {TYPE_2__ mgt_data; } ;


 int ATTO_GDA_AT_PORT ;
 int DCF_POLLED ;
 int DCS_DISC_DONE ;
 int DCS_PT_DEV_ADDR ;
 int DCS_PT_DEV_INFO ;
 int ESAS2R_LOG_WARN ;
 scalar_t__ RS_DEV_INVALID ;
 scalar_t__ RS_SCAN_GEN ;
 scalar_t__ RS_SUCCESS ;
 int VDADEVFEAT_PHYS_ID ;
 int esas2r_disc_continue (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_log (int ,char*,scalar_t__) ;
 int esas2r_rq_destroy_request (struct esas2r_request*,struct esas2r_adapter*) ;
 int esas2r_trace (char*,int) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 int le16_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void esas2r_disc_passthru_dev_info_cb(struct esas2r_adapter *a,
          struct esas2r_request *rq)
{
 struct esas2r_disc_context *dc =
  (struct esas2r_disc_context *)rq->interrupt_cx;
 unsigned long flags;
 struct atto_vda_devinfo *devinfo;

 esas2r_trace_enter();

 spin_lock_irqsave(&a->mem_lock, flags);

 if (rq->req_stat == RS_SCAN_GEN) {
  dc->scan_gen = rq->func_rsp.mgt_rsp.scan_generation;
  dc->dev_ix = 0;
  dc->state = DCS_PT_DEV_INFO;
 } else if (rq->req_stat == RS_SUCCESS) {
  devinfo = &rq->vda_rsp_data->mgt_data.data.dev_info;

  dc->dev_ix = le16_to_cpu(rq->func_rsp.mgt_rsp.dev_index);

  dc->curr_virt_id = le16_to_cpu(devinfo->target_id);

  if (le16_to_cpu(devinfo->features) & VDADEVFEAT_PHYS_ID) {
   dc->curr_phys_id =
    le16_to_cpu(devinfo->phys_target_id);
   dc->dev_addr_type = ATTO_GDA_AT_PORT;
   dc->state = DCS_PT_DEV_ADDR;

   esas2r_trace("curr_virt_id: %d", dc->curr_virt_id);
   esas2r_trace("curr_phys_id: %d", dc->curr_phys_id);
  } else {
   dc->dev_ix++;
  }
 } else {
  if (!(rq->req_stat == RS_DEV_INVALID)) {
   esas2r_log(ESAS2R_LOG_WARN,
       "A request for device information failed - "
       "status:%d", rq->req_stat);
  }

  dc->state = DCS_DISC_DONE;
 }

 esas2r_rq_destroy_request(rq, a);



 if (!(dc->flags & DCF_POLLED))
  esas2r_disc_continue(a, rq);

 spin_unlock_irqrestore(&a->mem_lock, flags);

 esas2r_trace_exit();
}
