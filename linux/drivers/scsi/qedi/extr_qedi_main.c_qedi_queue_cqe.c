
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int itid; } ;
struct TYPE_8__ {size_t conn_id; int cqe_type; } ;
union iscsi_cqe {TYPE_4__ cqe_solicited; TYPE_3__ cqe_common; } ;
typedef size_t u32 ;
typedef void* u16 ;
struct qedi_work {int is_solicited; int list; void* que_idx; int cqe; struct qedi_ctx* qedi; } ;
struct qedi_percpu_s {int work_list; } ;
struct TYPE_6__ {struct qedi_conn** conn_cid_tbl; } ;
struct qedi_ctx {int dbg_ctx; TYPE_1__ cid_que; } ;
struct qedi_conn {TYPE_2__* cls_conn; } ;
struct TYPE_10__ {int is_solicited; int list; void* que_idx; int cqe; struct qedi_ctx* qedi; } ;
struct qedi_cmd {TYPE_5__ cqe_work; } ;
struct iscsi_conn {int dummy; } ;
struct TYPE_7__ {struct iscsi_conn* dd_data; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;





 int QEDI_ERR (int *,char*) ;
 int QEDI_WARN (int *,char*,size_t) ;
 struct qedi_work* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,union iscsi_cqe*,int) ;
 struct qedi_cmd* qedi_get_cmd_from_tid (struct qedi_ctx*,int ) ;

__attribute__((used)) static int qedi_queue_cqe(struct qedi_ctx *qedi, union iscsi_cqe *cqe,
     u16 que_idx, struct qedi_percpu_s *p)
{
 struct qedi_work *qedi_work;
 struct qedi_conn *q_conn;
 struct iscsi_conn *conn;
 struct qedi_cmd *qedi_cmd;
 u32 iscsi_cid;
 int rc = 0;

 iscsi_cid = cqe->cqe_common.conn_id;
 q_conn = qedi->cid_que.conn_cid_tbl[iscsi_cid];
 if (!q_conn) {
  QEDI_WARN(&qedi->dbg_ctx,
     "Session no longer exists for cid=0x%x!!\n",
     iscsi_cid);
  return -1;
 }
 conn = q_conn->cls_conn->dd_data;

 switch (cqe->cqe_common.cqe_type) {
 case 131:
 case 130:
  qedi_cmd = qedi_get_cmd_from_tid(qedi, cqe->cqe_solicited.itid);
  if (!qedi_cmd) {
   rc = -1;
   break;
  }
  INIT_LIST_HEAD(&qedi_cmd->cqe_work.list);
  qedi_cmd->cqe_work.qedi = qedi;
  memcpy(&qedi_cmd->cqe_work.cqe, cqe, sizeof(union iscsi_cqe));
  qedi_cmd->cqe_work.que_idx = que_idx;
  qedi_cmd->cqe_work.is_solicited = 1;
  list_add_tail(&qedi_cmd->cqe_work.list, &p->work_list);
  break;
 case 128:
 case 132:
 case 129:
  qedi_work = kzalloc(sizeof(*qedi_work), GFP_ATOMIC);
  if (!qedi_work) {
   rc = -1;
   break;
  }
  INIT_LIST_HEAD(&qedi_work->list);
  qedi_work->qedi = qedi;
  memcpy(&qedi_work->cqe, cqe, sizeof(union iscsi_cqe));
  qedi_work->que_idx = que_idx;
  qedi_work->is_solicited = 0;
  list_add_tail(&qedi_work->list, &p->work_list);
  break;
 default:
  rc = -1;
  QEDI_ERR(&qedi->dbg_ctx, "FW Error cqe.\n");
 }
 return rc;
}
