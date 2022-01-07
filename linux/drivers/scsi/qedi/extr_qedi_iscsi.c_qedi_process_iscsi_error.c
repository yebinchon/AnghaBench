
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qedi_endpoint {struct qedi_ctx* qedi; struct qedi_conn* conn; } ;
struct qedi_ctx {int dbg_ctx; } ;
struct qedi_conn {int qedi; TYPE_1__* cls_conn; } ;
struct iscsi_eqe_data {int error_code; } ;
struct TYPE_2__ {int dd_data; } ;


 int KERN_ALERT ;
 int QEDI_ERR (int *,char*,int ) ;
 int iscsi_conn_printk (int ,int ,char*,char*,char*) ;
 char* qedi_get_iscsi_error (int ) ;
 int qedi_start_conn_recovery (int ,struct qedi_conn*) ;

void qedi_process_iscsi_error(struct qedi_endpoint *ep,
         struct iscsi_eqe_data *data)
{
 struct qedi_conn *qedi_conn;
 struct qedi_ctx *qedi;
 char warn_notice[] = "iscsi_warning";
 char error_notice[] = "iscsi_error";
 char unknown_msg[] = "Unknown error";
 char *message;
 int need_recovery = 0;
 u32 err_mask = 0;
 char *msg;

 if (!ep)
  return;

 qedi_conn = ep->conn;
 if (!qedi_conn)
  return;

 qedi = ep->qedi;

 QEDI_ERR(&qedi->dbg_ctx, "async event iscsi error:0x%x\n",
   data->error_code);

 if (err_mask) {
  need_recovery = 0;
  message = warn_notice;
 } else {
  need_recovery = 1;
  message = error_notice;
 }

 msg = qedi_get_iscsi_error(data->error_code);
 if (!msg) {
  need_recovery = 0;
  msg = unknown_msg;
 }

 iscsi_conn_printk(KERN_ALERT,
     qedi_conn->cls_conn->dd_data,
     "qedi: %s - %s\n", message, msg);

 if (need_recovery)
  qedi_start_conn_recovery(qedi_conn->qedi, qedi_conn);
}
