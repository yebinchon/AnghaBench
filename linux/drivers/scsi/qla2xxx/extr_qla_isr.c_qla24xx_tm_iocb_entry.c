
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sts_entry_24xx {scalar_t__ entry_status; scalar_t__ comp_status; scalar_t__ rsp_data_len; scalar_t__* data; int scsi_status; } ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_10__ {TYPE_2__ tmf; } ;
struct srb_iocb {TYPE_3__ u; } ;
struct req_que {int dummy; } ;
struct TYPE_8__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_11__ {char* name; int (* done ) (TYPE_4__*,int ) ;int vha; int handle; TYPE_5__* fcport; TYPE_1__ u; } ;
typedef TYPE_4__ srb_t ;
typedef int scsi_qla_host_t ;
struct TYPE_12__ {int vha; } ;
typedef TYPE_5__ fc_port_t ;


 int CS_COMPLETE ;
 void* QLA_FUNCTION_FAILED ;
 scalar_t__ QLA_SUCCESS ;
 int SS_RESPONSE_INFO_LEN_VALID ;
 scalar_t__ cpu_to_le16 (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__) ;
 scalar_t__ ql_dbg_async ;
 scalar_t__ ql_dbg_buffer ;
 int ql_dump_buffer (scalar_t__,int ,int,struct sts_entry_24xx*,int) ;
 int ql_log (int ,int ,int,char*,char const*,int ,scalar_t__) ;
 int ql_log_warn ;
 TYPE_4__* qla2x00_get_sp_from_handle (int *,char const*,struct req_que*,void*) ;
 int stub1 (TYPE_4__*,int ) ;

__attribute__((used)) static void
qla24xx_tm_iocb_entry(scsi_qla_host_t *vha, struct req_que *req, void *tsk)
{
 const char func[] = "TMF-IOCB";
 const char *type;
 fc_port_t *fcport;
 srb_t *sp;
 struct srb_iocb *iocb;
 struct sts_entry_24xx *sts = (struct sts_entry_24xx *)tsk;

 sp = qla2x00_get_sp_from_handle(vha, func, req, tsk);
 if (!sp)
  return;

 iocb = &sp->u.iocb_cmd;
 type = sp->name;
 fcport = sp->fcport;
 iocb->u.tmf.data = QLA_SUCCESS;

 if (sts->entry_status) {
  ql_log(ql_log_warn, fcport->vha, 0x5038,
      "Async-%s error - hdl=%x entry-status(%x).\n",
      type, sp->handle, sts->entry_status);
  iocb->u.tmf.data = QLA_FUNCTION_FAILED;
 } else if (sts->comp_status != cpu_to_le16(CS_COMPLETE)) {
  ql_log(ql_log_warn, fcport->vha, 0x5039,
      "Async-%s error - hdl=%x completion status(%x).\n",
      type, sp->handle, sts->comp_status);
  iocb->u.tmf.data = QLA_FUNCTION_FAILED;
 } else if ((le16_to_cpu(sts->scsi_status) &
     SS_RESPONSE_INFO_LEN_VALID)) {
  if (le32_to_cpu(sts->rsp_data_len) < 4) {
   ql_log(ql_log_warn, fcport->vha, 0x503b,
       "Async-%s error - hdl=%x not enough response(%d).\n",
       type, sp->handle, sts->rsp_data_len);
  } else if (sts->data[3]) {
   ql_log(ql_log_warn, fcport->vha, 0x503c,
       "Async-%s error - hdl=%x response(%x).\n",
       type, sp->handle, sts->data[3]);
   iocb->u.tmf.data = QLA_FUNCTION_FAILED;
  }
 }

 if (iocb->u.tmf.data != QLA_SUCCESS)
  ql_dump_buffer(ql_dbg_async + ql_dbg_buffer, sp->vha, 0x5055,
      sts, sizeof(*sts));

 sp->done(sp, 0);
}
