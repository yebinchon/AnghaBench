
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_7__ {int handle; } ;
typedef TYPE_1__ sts_entry_t ;
struct req_que {size_t num_outstanding_cmds; TYPE_2__** outstanding_cmds; } ;
struct qla_hw_data {int dummy; } ;
struct TYPE_8__ {size_t handle; } ;
typedef TYPE_2__ srb_t ;
struct TYPE_9__ {int dpc_flags; struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;


 int FCOE_CTX_RESET_NEEDED ;
 int ISP_ABORT_NEEDED ;
 scalar_t__ IS_P3P_TYPE (struct qla_hw_data*) ;
 size_t LSW (int ) ;
 int ql_log (int ,TYPE_3__*,int,char*,size_t,...) ;
 int ql_log_warn ;
 int set_bit (int ,int *) ;

srb_t *
qla2x00_get_sp_from_handle(scsi_qla_host_t *vha, const char *func,
    struct req_que *req, void *iocb)
{
 struct qla_hw_data *ha = vha->hw;
 sts_entry_t *pkt = iocb;
 srb_t *sp = ((void*)0);
 uint16_t index;

 index = LSW(pkt->handle);
 if (index >= req->num_outstanding_cmds) {
  ql_log(ql_log_warn, vha, 0x5031,
      "Invalid command index (%x) type %8ph.\n",
      index, iocb);
  if (IS_P3P_TYPE(ha))
   set_bit(FCOE_CTX_RESET_NEEDED, &vha->dpc_flags);
  else
   set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
  goto done;
 }
 sp = req->outstanding_cmds[index];
 if (!sp) {
  ql_log(ql_log_warn, vha, 0x5032,
      "Invalid completion handle (%x) -- timed-out.\n", index);
  return sp;
 }
 if (sp->handle != index) {
  ql_log(ql_log_warn, vha, 0x5033,
      "SRB handle (%x) mismatch %x.\n", sp->handle, index);
  return ((void*)0);
 }

 req->outstanding_cmds[index] = ((void*)0);

done:
 return sp;
}
