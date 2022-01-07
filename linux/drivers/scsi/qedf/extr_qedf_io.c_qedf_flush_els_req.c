
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedf_ioreq {int refcount; int * cb_arg; int (* cb_func ) (int *) ;int timeout_work; int event; int xid; } ;
struct qedf_ctx {int dbg_ctx; } ;


 int QEDF_INFO (int *,int ,char*,int ,int ) ;
 int QEDF_IOREQ_EV_ELS_FLUSH ;
 int QEDF_LOG_IO ;
 int cancel_delayed_work_sync (int *) ;
 int kref_put (int *,int ) ;
 int kref_read (int *) ;
 int qedf_release_cmd ;
 int stub1 (int *) ;

__attribute__((used)) static void qedf_flush_els_req(struct qedf_ctx *qedf,
 struct qedf_ioreq *els_req)
{
 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
     "Flushing ELS request xid=0x%x refcount=%d.\n", els_req->xid,
     kref_read(&els_req->refcount));





 els_req->event = QEDF_IOREQ_EV_ELS_FLUSH;


 cancel_delayed_work_sync(&els_req->timeout_work);


 if (els_req->cb_func && els_req->cb_arg) {
  els_req->cb_func(els_req->cb_arg);
  els_req->cb_arg = ((void*)0);
 }


 kref_put(&els_req->refcount, qedf_release_cmd);
}
