
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct qedf_rport {int sid; struct qedf_ctx* qedf; int flags; } ;
struct qedf_ioreq {int refcount; int xid; TYPE_3__* task; struct qedf_rport* fcport; } ;
struct qedf_els_cb_arg {struct qedf_ioreq* aborted_io_req; } ;
struct qedf_ctx {int dbg_ctx; struct fc_lport* lport; } ;
struct fc_lport {int r_a_tov; } ;
struct fc_els_rec {void* rec_rx_id; void* rec_ox_id; int rec_s_id; int rec_cmd; } ;
typedef int rec ;
struct TYPE_4__ {int rx_id; } ;
struct TYPE_5__ {TYPE_1__ read_write; } ;
struct TYPE_6__ {TYPE_2__ tstorm_st_context; } ;


 int EINVAL ;
 int ELS_REC ;
 int ENOMEM ;
 int GFP_NOIO ;
 int QEDF_ERR (int *,char*,...) ;
 int QEDF_INFO (int *,int ,char*,struct qedf_ioreq*,int ,void*) ;
 int QEDF_LOG_ELS ;
 int QEDF_RPORT_SESSION_READY ;
 int hton24 (int ,int ) ;
 void* htons (int ) ;
 int kfree (struct qedf_els_cb_arg*) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 struct qedf_els_cb_arg* kzalloc (int,int ) ;
 int memset (struct fc_els_rec*,int ,int) ;
 int qedf_initiate_els (struct qedf_rport*,int ,struct fc_els_rec*,int,int ,struct qedf_els_cb_arg*,int ) ;
 int qedf_rec_compl ;
 int qedf_release_cmd ;
 int test_bit (int ,int *) ;

int qedf_send_rec(struct qedf_ioreq *orig_io_req)
{

 struct fc_els_rec rec;
 struct qedf_rport *fcport;
 struct fc_lport *lport;
 struct qedf_els_cb_arg *cb_arg = ((void*)0);
 struct qedf_ctx *qedf;
 uint32_t sid;
 uint32_t r_a_tov;
 int rc;

 if (!orig_io_req) {
  QEDF_ERR(((void*)0), "orig_io_req is NULL.\n");
  return -EINVAL;
 }

 fcport = orig_io_req->fcport;


 if (!test_bit(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
  QEDF_ERR(((void*)0), "fcport is no longer offloaded.\n");
  return -EINVAL;
 }

 if (!fcport->qedf) {
  QEDF_ERR(((void*)0), "fcport->qedf is NULL.\n");
  return -EINVAL;
 }


 kref_get(&orig_io_req->refcount);

 qedf = fcport->qedf;
 lport = qedf->lport;
 sid = fcport->sid;
 r_a_tov = lport->r_a_tov;

 memset(&rec, 0, sizeof(rec));

 cb_arg = kzalloc(sizeof(struct qedf_els_cb_arg), GFP_NOIO);
 if (!cb_arg) {
  QEDF_ERR(&(qedf->dbg_ctx), "Unable to allocate cb_arg for "
     "REC\n");
  rc = -ENOMEM;
  goto rec_err;
 }

 cb_arg->aborted_io_req = orig_io_req;

 rec.rec_cmd = ELS_REC;
 hton24(rec.rec_s_id, sid);
 rec.rec_ox_id = htons(orig_io_req->xid);
 rec.rec_rx_id =
     htons(orig_io_req->task->tstorm_st_context.read_write.rx_id);

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_ELS, "Sending REC orig_io=%p, "
    "orig_xid=0x%x rx_id=0x%x\n", orig_io_req,
    orig_io_req->xid, rec.rec_rx_id);
 rc = qedf_initiate_els(fcport, ELS_REC, &rec, sizeof(rec),
     qedf_rec_compl, cb_arg, r_a_tov);

rec_err:
 if (rc) {
  QEDF_ERR(&(qedf->dbg_ctx), "REC failed - release orig_io_req"
     "=0x%x\n", orig_io_req->xid);
  kfree(cb_arg);
  kref_put(&orig_io_req->refcount, qedf_release_cmd);
 }
 return rc;
}
