
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* uint32_t ;
typedef scalar_t__ uint16_t ;
struct sts_entry_24xx {int comp_status; } ;
struct TYPE_14__ {void* len; void* comp_status; void** fw_status; } ;
struct TYPE_13__ {scalar_t__ rsp; } ;
struct TYPE_15__ {TYPE_2__ els_plogi; TYPE_1__ ctarg; } ;
struct srb_iocb {TYPE_3__ u; } ;
struct req_que {int dummy; } ;
struct TYPE_17__ {int status; } ;
struct TYPE_18__ {TYPE_5__ ctels_reply; } ;
struct fc_bsg_reply {void* reply_payload_rcv_len; TYPE_6__ reply_data; } ;
struct els_sts_entry_24xx {int error_subcode_2; int error_subcode_1; int total_byte_count; } ;
struct ct_sns_rsp {int dummy; } ;
struct TYPE_19__ {void* payload_len; } ;
struct bsg_job {int reply_len; TYPE_7__ reply_payload; struct fc_bsg_reply* reply; } ;
struct TYPE_16__ {struct bsg_job* bsg_job; struct srb_iocb iocb_cmd; } ;
struct TYPE_20__ {int type; int (* done ) (TYPE_8__*,int) ;int handle; TYPE_4__ u; int name; int vha; } ;
typedef TYPE_8__ srb_t ;
typedef int scsi_qla_host_t ;
typedef int ms_iocb_entry_t ;
typedef int fw_status ;


 scalar_t__ CS_COMPLETE ;
 scalar_t__ CS_DATA_UNDERRUN ;
 int DID_ERROR ;
 int DID_OK ;
 int ELS_IOCB_TYPE ;
 int FC_CTELS_STATUS_OK ;





 void* le16_to_cpu (int ) ;
 int memcpy (struct fc_bsg_reply*,void**,int) ;
 int ql_dbg (scalar_t__,int *,int,char*,...) ;
 scalar_t__ ql_dbg_buffer ;
 scalar_t__ ql_dbg_user ;
 int ql_dump_buffer (scalar_t__,int *,int,struct sts_entry_24xx*,int) ;
 int qla2x00_chk_ms_status (int ,int *,struct ct_sns_rsp*,int ) ;
 TYPE_8__* qla2x00_get_sp_from_handle (int *,char const*,struct req_que*,struct sts_entry_24xx*) ;
 int stub1 (TYPE_8__*,int) ;
 int stub2 (TYPE_8__*,int) ;
 int stub3 (TYPE_8__*,int) ;

__attribute__((used)) static void
qla24xx_els_ct_entry(scsi_qla_host_t *vha, struct req_que *req,
    struct sts_entry_24xx *pkt, int iocb_type)
{
 const char func[] = "ELS_CT_IOCB";
 const char *type;
 srb_t *sp;
 struct bsg_job *bsg_job;
 struct fc_bsg_reply *bsg_reply;
 uint16_t comp_status;
 uint32_t fw_status[3];
 int res;
 struct srb_iocb *els;

 sp = qla2x00_get_sp_from_handle(vha, func, req, pkt);
 if (!sp)
  return;

 type = ((void*)0);
 switch (sp->type) {
 case 129:
 case 130:
  type = "els";
  break;
 case 132:
  type = "ct pass-through";
  break;
 case 128:
  type = "Driver ELS logo";
  if (iocb_type != ELS_IOCB_TYPE) {
   ql_dbg(ql_dbg_user, vha, 0x5047,
       "Completing %s: (%p) type=%d.\n",
       type, sp, sp->type);
   sp->done(sp, 0);
   return;
  }
  break;
 case 131:



  res = qla2x00_chk_ms_status(sp->vha, (ms_iocb_entry_t *)pkt,
   (struct ct_sns_rsp *)sp->u.iocb_cmd.u.ctarg.rsp,
   sp->name);
  sp->done(sp, res);
  return;
 default:
  ql_dbg(ql_dbg_user, vha, 0x503e,
      "Unrecognized SRB: (%p) type=%d.\n", sp, sp->type);
  return;
 }

 comp_status = fw_status[0] = le16_to_cpu(pkt->comp_status);
 fw_status[1] = le16_to_cpu(((struct els_sts_entry_24xx *)pkt)->error_subcode_1);
 fw_status[2] = le16_to_cpu(((struct els_sts_entry_24xx *)pkt)->error_subcode_2);

 if (iocb_type == ELS_IOCB_TYPE) {
  els = &sp->u.iocb_cmd;
  els->u.els_plogi.fw_status[0] = fw_status[0];
  els->u.els_plogi.fw_status[1] = fw_status[1];
  els->u.els_plogi.fw_status[2] = fw_status[2];
  els->u.els_plogi.comp_status = fw_status[0];
  if (comp_status == CS_COMPLETE) {
   res = DID_OK << 16;
  } else {
   if (comp_status == CS_DATA_UNDERRUN) {
    res = DID_OK << 16;
    els->u.els_plogi.len =
    le16_to_cpu(((struct els_sts_entry_24xx *)
     pkt)->total_byte_count);
   } else {
    els->u.els_plogi.len = 0;
    res = DID_ERROR << 16;
   }
  }
  ql_dbg(ql_dbg_user, vha, 0x503f,
      "ELS IOCB Done -%s error hdl=%x comp_status=0x%x error subcode 1=0x%x error subcode 2=0x%x total_byte=0x%x\n",
      type, sp->handle, comp_status, fw_status[1], fw_status[2],
      le16_to_cpu(((struct els_sts_entry_24xx *)
   pkt)->total_byte_count));
  goto els_ct_done;
 }




 bsg_job = sp->u.bsg_job;
 bsg_reply = bsg_job->reply;
 bsg_reply->reply_data.ctels_reply.status = FC_CTELS_STATUS_OK;
 bsg_job->reply_len = sizeof(struct fc_bsg_reply) + sizeof(fw_status);

 if (comp_status != CS_COMPLETE) {
  if (comp_status == CS_DATA_UNDERRUN) {
   res = DID_OK << 16;
   bsg_reply->reply_payload_rcv_len =
       le16_to_cpu(((struct els_sts_entry_24xx *)pkt)->total_byte_count);

   ql_dbg(ql_dbg_user, vha, 0x503f,
       "ELS-CT pass-through-%s error hdl=%x comp_status-status=0x%x "
       "error subcode 1=0x%x error subcode 2=0x%x total_byte = 0x%x.\n",
       type, sp->handle, comp_status, fw_status[1], fw_status[2],
       le16_to_cpu(((struct els_sts_entry_24xx *)
    pkt)->total_byte_count));
  } else {
   ql_dbg(ql_dbg_user, vha, 0x5040,
       "ELS-CT pass-through-%s error hdl=%x comp_status-status=0x%x "
       "error subcode 1=0x%x error subcode 2=0x%x.\n",
       type, sp->handle, comp_status,
       le16_to_cpu(((struct els_sts_entry_24xx *)
    pkt)->error_subcode_1),
       le16_to_cpu(((struct els_sts_entry_24xx *)
        pkt)->error_subcode_2));
   res = DID_ERROR << 16;
   bsg_reply->reply_payload_rcv_len = 0;
  }
  memcpy(bsg_job->reply + sizeof(struct fc_bsg_reply),
         fw_status, sizeof(fw_status));
  ql_dump_buffer(ql_dbg_user + ql_dbg_buffer, vha, 0x5056,
      pkt, sizeof(*pkt));
 }
 else {
  res = DID_OK << 16;
  bsg_reply->reply_payload_rcv_len = bsg_job->reply_payload.payload_len;
  bsg_job->reply_len = 0;
 }
els_ct_done:

 sp->done(sp, res);
}
