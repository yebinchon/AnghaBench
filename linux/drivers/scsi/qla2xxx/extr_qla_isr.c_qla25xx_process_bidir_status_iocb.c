
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef size_t uint32_t ;
typedef int uint16_t ;
struct TYPE_23__ {int scsi_status; int comp_status; } ;
typedef TYPE_8__ sts_entry_t ;
struct sts_entry_24xx {int scsi_status; int comp_status; } ;
struct req_que {size_t num_outstanding_cmds; TYPE_9__** outstanding_cmds; int id; } ;
struct qla_hw_data {int dummy; } ;
struct TYPE_17__ {int* vendor_cmd; } ;
struct TYPE_18__ {TYPE_2__ h_vendor; } ;
struct fc_bsg_request {TYPE_3__ rqst_data; } ;
struct TYPE_21__ {size_t* vendor_rsp; } ;
struct TYPE_22__ {TYPE_6__ vendor_reply; } ;
struct fc_bsg_reply {TYPE_7__ reply_data; scalar_t__ reply_payload_rcv_len; } ;
struct TYPE_19__ {scalar_t__ payload_len; } ;
struct bsg_job {int reply_len; TYPE_4__ reply_payload; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct TYPE_16__ {struct bsg_job* bsg_job; } ;
struct TYPE_24__ {int (* done ) (TYPE_9__*,int) ;TYPE_1__ u; } ;
typedef TYPE_9__ srb_t ;
struct TYPE_20__ {int input_requests; int input_bytes; } ;
struct TYPE_15__ {TYPE_5__ qla_stats; int dpc_flags; struct qla_hw_data* hw; } ;
typedef TYPE_10__ scsi_qla_host_t ;
 int DID_OK ;
 size_t EXT_STATUS_DATA_OVERRUN ;
 size_t EXT_STATUS_DATA_UNDERRUN ;
 size_t EXT_STATUS_DMA_ERR ;
 size_t EXT_STATUS_ERR ;
 size_t EXT_STATUS_OK ;
 size_t EXT_STATUS_TIMEOUT ;
 int ISP_ABORT_NEEDED ;
 scalar_t__ IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 int SS_MASK ;
 int le16_to_cpu (int ) ;
 int ql_dbg (int ,TYPE_10__*,int,char*,int,...) ;
 int ql_dbg_user ;
 int ql_log (int ,TYPE_10__*,int,char*,size_t,...) ;
 int ql_log_warn ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_9__*,int) ;

__attribute__((used)) static void
qla25xx_process_bidir_status_iocb(scsi_qla_host_t *vha, void *pkt,
      struct req_que *req, uint32_t index)
{
 struct qla_hw_data *ha = vha->hw;
 srb_t *sp;
 uint16_t comp_status;
 uint16_t scsi_status;
 uint16_t thread_id;
 uint32_t rval = EXT_STATUS_OK;
 struct bsg_job *bsg_job = ((void*)0);
 struct fc_bsg_request *bsg_request;
 struct fc_bsg_reply *bsg_reply;
 sts_entry_t *sts = pkt;
 struct sts_entry_24xx *sts24 = pkt;


 if (index >= req->num_outstanding_cmds) {
  ql_log(ql_log_warn, vha, 0x70af,
      "Invalid SCSI completion handle 0x%x.\n", index);
  set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
  return;
 }

 sp = req->outstanding_cmds[index];
 if (!sp) {
  ql_log(ql_log_warn, vha, 0x70b0,
      "Req:%d: Invalid ISP SCSI completion handle(0x%x)\n",
      req->id, index);

  set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
  return;
 }


 req->outstanding_cmds[index] = ((void*)0);
 bsg_job = sp->u.bsg_job;
 bsg_request = bsg_job->request;
 bsg_reply = bsg_job->reply;

 if (IS_FWI2_CAPABLE(ha)) {
  comp_status = le16_to_cpu(sts24->comp_status);
  scsi_status = le16_to_cpu(sts24->scsi_status) & SS_MASK;
 } else {
  comp_status = le16_to_cpu(sts->comp_status);
  scsi_status = le16_to_cpu(sts->scsi_status) & SS_MASK;
 }

 thread_id = bsg_request->rqst_data.h_vendor.vendor_cmd[1];
 switch (comp_status) {
 case 131:
  if (scsi_status == 0) {
   bsg_reply->reply_payload_rcv_len =
     bsg_job->reply_payload.payload_len;
   vha->qla_stats.input_bytes +=
    bsg_reply->reply_payload_rcv_len;
   vha->qla_stats.input_requests++;
   rval = EXT_STATUS_OK;
  }
  goto done;

 case 130:
  ql_dbg(ql_dbg_user, vha, 0x70b1,
      "Command completed with data overrun thread_id=%d\n",
      thread_id);
  rval = EXT_STATUS_DATA_OVERRUN;
  break;

 case 129:
  ql_dbg(ql_dbg_user, vha, 0x70b2,
      "Command completed with data underrun thread_id=%d\n",
      thread_id);
  rval = EXT_STATUS_DATA_UNDERRUN;
  break;
 case 137:
  ql_dbg(ql_dbg_user, vha, 0x70b3,
      "Command completed with read data overrun thread_id=%d\n",
      thread_id);
  rval = EXT_STATUS_DATA_OVERRUN;
  break;

 case 133:
  ql_dbg(ql_dbg_user, vha, 0x70b4,
      "Command completed with read and write data overrun "
      "thread_id=%d\n", thread_id);
  rval = EXT_STATUS_DATA_OVERRUN;
  break;

 case 136:
  ql_dbg(ql_dbg_user, vha, 0x70b5,
      "Command completed with read data over and write data "
      "underrun thread_id=%d\n", thread_id);
  rval = EXT_STATUS_DATA_OVERRUN;
  break;

 case 135:
  ql_dbg(ql_dbg_user, vha, 0x70b6,
      "Command completed with read data underrun "
      "thread_id=%d\n", thread_id);
  rval = EXT_STATUS_DATA_UNDERRUN;
  break;

 case 134:
  ql_dbg(ql_dbg_user, vha, 0x70b7,
      "Command completed with read data under and write data "
      "overrun thread_id=%d\n", thread_id);
  rval = EXT_STATUS_DATA_UNDERRUN;
  break;

 case 132:
  ql_dbg(ql_dbg_user, vha, 0x70b8,
      "Command completed with read and write data underrun "
      "thread_id=%d\n", thread_id);
  rval = EXT_STATUS_DATA_UNDERRUN;
  break;

 case 138:
  ql_dbg(ql_dbg_user, vha, 0x70b9,
      "Command completed with data DMA error thread_id=%d\n",
      thread_id);
  rval = EXT_STATUS_DMA_ERR;
  break;

 case 128:
  ql_dbg(ql_dbg_user, vha, 0x70ba,
      "Command completed with timeout thread_id=%d\n",
      thread_id);
  rval = EXT_STATUS_TIMEOUT;
  break;
 default:
  ql_dbg(ql_dbg_user, vha, 0x70bb,
      "Command completed with completion status=0x%x "
      "thread_id=%d\n", comp_status, thread_id);
  rval = EXT_STATUS_ERR;
  break;
 }
 bsg_reply->reply_payload_rcv_len = 0;

done:

 bsg_reply->reply_data.vendor_reply.vendor_rsp[0] = rval;
 bsg_job->reply_len = sizeof(struct fc_bsg_reply);


 sp->done(sp, DID_OK << 16);

}
