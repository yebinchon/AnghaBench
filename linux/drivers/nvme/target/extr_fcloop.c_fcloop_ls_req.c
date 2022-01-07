
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmefc_ls_req {int rqstlen; int rqstaddr; struct fcloop_lsreq* private; } ;
struct nvme_fc_remote_port {struct fcloop_rport* private; } ;
struct nvme_fc_local_port {int dummy; } ;
struct fcloop_rport {TYPE_1__* targetport; } ;
struct fcloop_lsreq {int tgt_ls_req; int * tport; int status; int work; struct nvmefc_ls_req* lsreq; } ;
struct TYPE_2__ {int * private; } ;


 int ECONNREFUSED ;
 int INIT_WORK (int *,int ) ;
 int fcloop_tgt_lsrqst_done_work ;
 int nvmet_fc_rcv_ls_req (TYPE_1__*,int *,int ,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static int
fcloop_ls_req(struct nvme_fc_local_port *localport,
   struct nvme_fc_remote_port *remoteport,
   struct nvmefc_ls_req *lsreq)
{
 struct fcloop_lsreq *tls_req = lsreq->private;
 struct fcloop_rport *rport = remoteport->private;
 int ret = 0;

 tls_req->lsreq = lsreq;
 INIT_WORK(&tls_req->work, fcloop_tgt_lsrqst_done_work);

 if (!rport->targetport) {
  tls_req->status = -ECONNREFUSED;
  tls_req->tport = ((void*)0);
  schedule_work(&tls_req->work);
  return ret;
 }

 tls_req->status = 0;
 tls_req->tport = rport->targetport->private;
 ret = nvmet_fc_rcv_ls_req(rport->targetport, &tls_req->tgt_ls_req,
     lsreq->rqstaddr, lsreq->rqstlen);

 return ret;
}
