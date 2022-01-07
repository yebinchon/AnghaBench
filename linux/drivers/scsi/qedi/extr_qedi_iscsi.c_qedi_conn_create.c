
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qedi_ctx {int dbg_ctx; } ;
struct qedi_conn {int list_lock; int active_cmd_list; scalar_t__ active_cmd_count; int * ep; struct qedi_ctx* qedi; struct iscsi_cls_conn* cls_conn; } ;
struct iscsi_conn {struct qedi_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct Scsi_Host {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int KERN_ALERT ;
 int QEDI_ERR (int *,char*,int ,struct iscsi_cls_session*) ;
 int iscsi_conn_printk (int ,struct iscsi_conn*,char*,int ,struct iscsi_cls_session*) ;
 struct iscsi_cls_conn* iscsi_conn_setup (struct iscsi_cls_session*,int,int ) ;
 int iscsi_conn_teardown (struct iscsi_cls_conn*) ;
 struct qedi_ctx* iscsi_host_priv (struct Scsi_Host*) ;
 struct Scsi_Host* iscsi_session_to_shost (struct iscsi_cls_session*) ;
 scalar_t__ qedi_conn_alloc_login_resources (struct qedi_ctx*,struct qedi_conn*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct iscsi_cls_conn *
qedi_conn_create(struct iscsi_cls_session *cls_session, uint32_t cid)
{
 struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
 struct qedi_ctx *qedi = iscsi_host_priv(shost);
 struct iscsi_cls_conn *cls_conn;
 struct qedi_conn *qedi_conn;
 struct iscsi_conn *conn;

 cls_conn = iscsi_conn_setup(cls_session, sizeof(*qedi_conn),
        cid);
 if (!cls_conn) {
  QEDI_ERR(&qedi->dbg_ctx,
    "conn_new: iscsi conn setup failed, cid=0x%x, cls_sess=%p!\n",
    cid, cls_session);
  return ((void*)0);
 }

 conn = cls_conn->dd_data;
 qedi_conn = conn->dd_data;
 qedi_conn->cls_conn = cls_conn;
 qedi_conn->qedi = qedi;
 qedi_conn->ep = ((void*)0);
 qedi_conn->active_cmd_count = 0;
 INIT_LIST_HEAD(&qedi_conn->active_cmd_list);
 spin_lock_init(&qedi_conn->list_lock);

 if (qedi_conn_alloc_login_resources(qedi, qedi_conn)) {
  iscsi_conn_printk(KERN_ALERT, conn,
      "conn_new: login resc alloc failed, cid=0x%x, cls_sess=%p!!\n",
       cid, cls_session);
  goto free_conn;
 }

 return cls_conn;

free_conn:
 iscsi_conn_teardown(cls_conn);
 return ((void*)0);
}
