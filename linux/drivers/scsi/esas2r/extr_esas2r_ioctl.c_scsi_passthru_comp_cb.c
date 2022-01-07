
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_5__ {int residual_length; int scsi_stat; } ;
struct TYPE_6__ {TYPE_2__ scsi_rsp; } ;
struct esas2r_request {int req_stat; int (* aux_req_cb ) (struct esas2r_adapter*,struct esas2r_request*) ;TYPE_3__ func_rsp; int sense_len; scalar_t__ aux_req_cx; } ;
struct esas2r_adapter {int dummy; } ;
struct atto_hba_scsi_pass_thru {scalar_t__ target_id; int req_status; int residual_length; int sense_length; int scsi_status; } ;
struct TYPE_4__ {struct atto_hba_scsi_pass_thru scsi_pass_thru; } ;
struct atto_ioctl {TYPE_1__ data; } ;


 int ATTO_SPT_RS_ABORTED ;
 int ATTO_SPT_RS_BUSY ;
 int ATTO_SPT_RS_BUS_RESET ;
 int ATTO_SPT_RS_DEGRADED ;
 int ATTO_SPT_RS_FAILED ;
 int ATTO_SPT_RS_NO_DEVICE ;
 int ATTO_SPT_RS_NO_LUN ;
 int ATTO_SPT_RS_OVERRUN ;
 int ATTO_SPT_RS_SUCCESS ;
 int ATTO_SPT_RS_TIMEOUT ;
 int ATTO_SPT_RS_UNDERRUN ;
 scalar_t__ esas2r_targ_db_find_next_present (struct esas2r_adapter*,int ) ;
 int le32_to_cpu (int ) ;
 int stub1 (struct esas2r_adapter*,struct esas2r_request*) ;

__attribute__((used)) static void scsi_passthru_comp_cb(struct esas2r_adapter *a,
      struct esas2r_request *rq)
{
 struct atto_ioctl *hi = (struct atto_ioctl *)rq->aux_req_cx;
 struct atto_hba_scsi_pass_thru *spt = &hi->data.scsi_pass_thru;
 u8 sts = ATTO_SPT_RS_FAILED;

 spt->scsi_status = rq->func_rsp.scsi_rsp.scsi_stat;
 spt->sense_length = rq->sense_len;
 spt->residual_length =
  le32_to_cpu(rq->func_rsp.scsi_rsp.residual_length);

 switch (rq->req_stat) {
 case 130:
 case 133:
  sts = ATTO_SPT_RS_SUCCESS;
  break;
 case 128:
  sts = ATTO_SPT_RS_UNDERRUN;
  break;
 case 135:
  sts = ATTO_SPT_RS_OVERRUN;
  break;
 case 132:
 case 131:
  sts = ATTO_SPT_RS_NO_DEVICE;
  break;
 case 136:
  sts = ATTO_SPT_RS_NO_LUN;
  break;
 case 129:
  sts = ATTO_SPT_RS_TIMEOUT;
  break;
 case 137:
  sts = ATTO_SPT_RS_DEGRADED;
  break;
 case 138:
  sts = ATTO_SPT_RS_BUSY;
  break;
 case 139:
  sts = ATTO_SPT_RS_ABORTED;
  break;
 case 134:
  sts = ATTO_SPT_RS_BUS_RESET;
  break;
 }

 spt->req_status = sts;


 spt->target_id =
  esas2r_targ_db_find_next_present(a, (u16)spt->target_id);


 (*rq->aux_req_cb)(a, rq);
}
