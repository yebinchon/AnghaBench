
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {struct qedi_conn** conn_cid_tbl; } ;
struct qedi_ctx {size_t max_active_conns; TYPE_1__ cid_que; int dbg_ctx; } ;
struct qedi_conn {int dummy; } ;


 int QEDI_ERR (int *,char*,...) ;

struct qedi_conn *qedi_get_conn_from_id(struct qedi_ctx *qedi, u32 iscsi_cid)
{
 if (!qedi->cid_que.conn_cid_tbl) {
  QEDI_ERR(&qedi->dbg_ctx, "missing conn<->cid table\n");
  return ((void*)0);

 } else if (iscsi_cid >= qedi->max_active_conns) {
  QEDI_ERR(&qedi->dbg_ctx, "wrong cid #%d\n", iscsi_cid);
  return ((void*)0);
 }
 return qedi->cid_que.conn_cid_tbl[iscsi_cid];
}
