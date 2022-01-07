
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int scan_generation; } ;
struct TYPE_7__ {TYPE_1__ mgt_rsp; } ;
struct esas2r_request {scalar_t__ req_stat; TYPE_5__* vda_rsp_data; TYPE_2__ func_rsp; scalar_t__ interrupt_cx; } ;
struct esas2r_disc_context {int flags; int state; scalar_t__ dev_ix; scalar_t__ part_num; void* block_size; void* interleave; int * raid_grp_name; scalar_t__ raid_grp_ix; int scan_gen; } ;
struct esas2r_adapter {int mem_lock; } ;
struct atto_vda_grp_info {scalar_t__ status; int block_size; int interleave; int * grp_name; } ;
struct TYPE_8__ {struct atto_vda_grp_info grp_info; } ;
struct TYPE_9__ {TYPE_3__ data; } ;
struct TYPE_10__ {TYPE_4__ mgt_data; } ;


 int DCF_POLLED ;
 int DCS_PART_INFO ;
 int DCS_PT_DEV_INFO ;
 int ESAS2R_LOG_WARN ;
 scalar_t__ RS_GRP_INVALID ;
 scalar_t__ RS_SCAN_GEN ;
 scalar_t__ RS_SUCCESS ;
 scalar_t__ VDA_GRP_STAT_DEGRADED ;
 scalar_t__ VDA_GRP_STAT_ONLINE ;
 int esas2r_disc_continue (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_log (int ,char*,scalar_t__) ;
 int esas2r_rq_destroy_request (struct esas2r_request*,struct esas2r_adapter*) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 void* le32_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void esas2r_disc_raid_grp_info_cb(struct esas2r_adapter *a,
      struct esas2r_request *rq)
{
 struct esas2r_disc_context *dc =
  (struct esas2r_disc_context *)rq->interrupt_cx;
 unsigned long flags;
 struct atto_vda_grp_info *grpinfo;

 esas2r_trace_enter();

 spin_lock_irqsave(&a->mem_lock, flags);

 if (rq->req_stat == RS_SCAN_GEN) {
  dc->scan_gen = rq->func_rsp.mgt_rsp.scan_generation;
  dc->raid_grp_ix = 0;
  goto done;
 }

 if (rq->req_stat == RS_SUCCESS) {
  grpinfo = &rq->vda_rsp_data->mgt_data.data.grp_info;

  if (grpinfo->status != VDA_GRP_STAT_ONLINE
      && grpinfo->status != VDA_GRP_STAT_DEGRADED) {


   dc->raid_grp_ix++;
  } else {
   memcpy(&dc->raid_grp_name[0],
          &grpinfo->grp_name[0],
          sizeof(grpinfo->grp_name));

   dc->interleave = le32_to_cpu(grpinfo->interleave);
   dc->block_size = le32_to_cpu(grpinfo->block_size);

   dc->state = DCS_PART_INFO;
   dc->part_num = 0;
  }
 } else {
  if (!(rq->req_stat == RS_GRP_INVALID)) {
   esas2r_log(ESAS2R_LOG_WARN,
       "A request for RAID group info failed - "
       "returned with %x",
       rq->req_stat);
  }

  dc->dev_ix = 0;
  dc->state = DCS_PT_DEV_INFO;
 }

done:

 esas2r_rq_destroy_request(rq, a);



 if (!(dc->flags & DCF_POLLED))
  esas2r_disc_continue(a, rq);

 spin_unlock_irqrestore(&a->mem_lock, flags);

 esas2r_trace_exit();
}
