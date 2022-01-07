
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct esas2r_request {struct esas2r_disc_context* interrupt_cx; int comp_cb; TYPE_3__* vda_rsp_data; } ;
struct esas2r_disc_context {scalar_t__ part_num; int * raid_grp_name; int scan_gen; int raid_grp_ix; int state; } ;
struct esas2r_adapter {int dummy; } ;
struct atto_vdapart_info {scalar_t__ part_no; int * grp_name; } ;
struct TYPE_4__ {struct atto_vdapart_info part_info; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
struct TYPE_6__ {TYPE_2__ mgt_data; } ;


 int DCS_RAID_GRP_INFO ;
 int VDAMGT_PART_INFO ;
 scalar_t__ VDA_MAX_PARTITIONS ;
 int esas2r_build_mgt_req (struct esas2r_adapter*,struct esas2r_request*,int ,int ,int ,int,int *) ;
 int esas2r_disc_part_info_cb ;
 int esas2r_disc_start_request (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_rq_init_request (struct esas2r_request*,struct esas2r_adapter*) ;
 int esas2r_trace (char*,scalar_t__) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 int memcpy (int *,int *,int) ;
 int memset (struct atto_vdapart_info*,int ,int) ;

__attribute__((used)) static bool esas2r_disc_part_info(struct esas2r_adapter *a,
      struct esas2r_request *rq)
{
 struct esas2r_disc_context *dc =
  (struct esas2r_disc_context *)rq->interrupt_cx;
 bool rslt;
 struct atto_vdapart_info *partinfo;

 esas2r_trace_enter();

 esas2r_trace("part_num: %d", dc->part_num);

 if (dc->part_num >= VDA_MAX_PARTITIONS) {
  dc->state = DCS_RAID_GRP_INFO;
  dc->raid_grp_ix++;

  esas2r_trace_exit();

  return 0;
 }

 esas2r_rq_init_request(rq, a);

 partinfo = &rq->vda_rsp_data->mgt_data.data.part_info;

 memset(partinfo, 0, sizeof(struct atto_vdapart_info));

 esas2r_build_mgt_req(a,
        rq,
        VDAMGT_PART_INFO,
        dc->scan_gen,
        0,
        sizeof(struct atto_vdapart_info),
        ((void*)0));

 partinfo->part_no = dc->part_num;

 memcpy(&partinfo->grp_name[0],
        &dc->raid_grp_name[0],
        sizeof(partinfo->grp_name));

 rq->comp_cb = esas2r_disc_part_info_cb;

 rq->interrupt_cx = dc;

 rslt = esas2r_disc_start_request(a, rq);

 esas2r_trace_exit();

 return rslt;
}
