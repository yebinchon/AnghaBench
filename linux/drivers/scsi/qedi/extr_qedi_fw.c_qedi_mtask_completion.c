
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hdr_first_byte; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
struct TYPE_7__ {TYPE_2__ iscsi_hdr; } ;
union iscsi_cqe {TYPE_3__ cqe_common; } ;
typedef int uint16_t ;
typedef int u32 ;
struct qedi_ctx {int dbg_ctx; } ;
struct qedi_conn {TYPE_4__* cls_conn; } ;
struct iscsi_task {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct TYPE_8__ {struct iscsi_conn* dd_data; } ;
 int QEDI_ERR (int *,char*) ;
 int qedi_process_login_resp (struct qedi_ctx*,union iscsi_cqe*,struct iscsi_task*,struct qedi_conn*) ;
 int qedi_process_logout_resp (struct qedi_ctx*,union iscsi_cqe*,struct iscsi_task*,struct qedi_conn*) ;
 int qedi_process_nopin_mesg (struct qedi_ctx*,union iscsi_cqe*,struct iscsi_task*,struct qedi_conn*,int ) ;
 int qedi_process_text_resp (struct qedi_ctx*,union iscsi_cqe*,struct iscsi_task*,struct qedi_conn*) ;
 int qedi_process_tmf_resp (struct qedi_ctx*,union iscsi_cqe*,struct iscsi_task*,struct qedi_conn*) ;
 int qedi_scsi_completion (struct qedi_ctx*,union iscsi_cqe*,struct iscsi_task*,struct iscsi_conn*) ;

__attribute__((used)) static void qedi_mtask_completion(struct qedi_ctx *qedi,
      union iscsi_cqe *cqe,
      struct iscsi_task *task,
      struct qedi_conn *conn, uint16_t que_idx)
{
 struct iscsi_conn *iscsi_conn;
 u32 hdr_opcode;

 hdr_opcode = cqe->cqe_common.iscsi_hdr.common.hdr_first_byte;
 iscsi_conn = conn->cls_conn->dd_data;

 switch (hdr_opcode) {
 case 130:
 case 134:
  qedi_scsi_completion(qedi, cqe, task, iscsi_conn);
  break;
 case 133:
  qedi_process_login_resp(qedi, cqe, task, conn);
  break;
 case 128:
  qedi_process_tmf_resp(qedi, cqe, task, conn);
  break;
 case 129:
  qedi_process_text_resp(qedi, cqe, task, conn);
  break;
 case 132:
  qedi_process_logout_resp(qedi, cqe, task, conn);
  break;
 case 131:
  qedi_process_nopin_mesg(qedi, cqe, task, conn, que_idx);
  break;
 default:
  QEDI_ERR(&qedi->dbg_ctx, "unknown opcode\n");
 }
}
