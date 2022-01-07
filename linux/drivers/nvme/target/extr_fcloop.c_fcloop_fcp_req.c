
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmefc_fcp_req {struct fcloop_ini_fcpreq* private; } ;
struct nvme_fc_remote_port {struct fcloop_rport* private; } ;
struct nvme_fc_local_port {int dummy; } ;
struct fcloop_rport {TYPE_1__* targetport; } ;
struct fcloop_ini_fcpreq {int inilock; struct fcloop_fcpreq* tfcp_req; struct nvmefc_fcp_req* fcpreq; } ;
struct fcloop_fcpreq {int fcp_rcv_work; int ref; int tio_done_work; int abort_rcv_work; int reqlock; int inistate; int tport; struct nvmefc_fcp_req* fcpreq; } ;
struct TYPE_2__ {int private; } ;


 int ECONNREFUSED ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int INI_IO_START ;
 int fcloop_fcp_abort_recv_work ;
 int fcloop_fcp_recv_work ;
 int fcloop_tgt_fcprqst_done_work ;
 int kref_init (int *) ;
 struct fcloop_fcpreq* kzalloc (int,int ) ;
 int schedule_work (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
fcloop_fcp_req(struct nvme_fc_local_port *localport,
   struct nvme_fc_remote_port *remoteport,
   void *hw_queue_handle,
   struct nvmefc_fcp_req *fcpreq)
{
 struct fcloop_rport *rport = remoteport->private;
 struct fcloop_ini_fcpreq *inireq = fcpreq->private;
 struct fcloop_fcpreq *tfcp_req;

 if (!rport->targetport)
  return -ECONNREFUSED;

 tfcp_req = kzalloc(sizeof(*tfcp_req), GFP_ATOMIC);
 if (!tfcp_req)
  return -ENOMEM;

 inireq->fcpreq = fcpreq;
 inireq->tfcp_req = tfcp_req;
 spin_lock_init(&inireq->inilock);

 tfcp_req->fcpreq = fcpreq;
 tfcp_req->tport = rport->targetport->private;
 tfcp_req->inistate = INI_IO_START;
 spin_lock_init(&tfcp_req->reqlock);
 INIT_WORK(&tfcp_req->fcp_rcv_work, fcloop_fcp_recv_work);
 INIT_WORK(&tfcp_req->abort_rcv_work, fcloop_fcp_abort_recv_work);
 INIT_WORK(&tfcp_req->tio_done_work, fcloop_tgt_fcprqst_done_work);
 kref_init(&tfcp_req->ref);

 schedule_work(&tfcp_req->fcp_rcv_work);

 return 0;
}
