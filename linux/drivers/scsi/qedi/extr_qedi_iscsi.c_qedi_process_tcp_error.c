
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedi_endpoint {TYPE_1__* qedi; struct qedi_conn* conn; } ;
struct qedi_conn {int qedi; } ;
struct iscsi_eqe_data {int error_code; } ;
struct TYPE_2__ {int dbg_ctx; } ;


 int QEDI_ERR (int *,char*,int ) ;
 int qedi_start_conn_recovery (int ,struct qedi_conn*) ;

void qedi_process_tcp_error(struct qedi_endpoint *ep,
       struct iscsi_eqe_data *data)
{
 struct qedi_conn *qedi_conn;

 if (!ep)
  return;

 qedi_conn = ep->conn;
 if (!qedi_conn)
  return;

 QEDI_ERR(&ep->qedi->dbg_ctx, "async event TCP error:0x%x\n",
   data->error_code);

 qedi_start_conn_recovery(qedi_conn->qedi, qedi_conn);
}
