
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmefc_fcp_req {struct fcloop_ini_fcpreq* private; } ;
struct nvme_fc_remote_port {int dummy; } ;
struct nvme_fc_local_port {int dummy; } ;
struct fcloop_ini_fcpreq {int inilock; struct fcloop_fcpreq* tfcp_req; } ;
struct fcloop_fcpreq {int inistate; int abort_rcv_work; int reqlock; } ;


 int INI_IO_ABORTED ;



 int WARN_ON (int) ;
 int fcloop_tfcp_req_get (struct fcloop_fcpreq*) ;
 int fcloop_tfcp_req_put (struct fcloop_fcpreq*) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
fcloop_fcp_abort(struct nvme_fc_local_port *localport,
   struct nvme_fc_remote_port *remoteport,
   void *hw_queue_handle,
   struct nvmefc_fcp_req *fcpreq)
{
 struct fcloop_ini_fcpreq *inireq = fcpreq->private;
 struct fcloop_fcpreq *tfcp_req;
 bool abortio = 1;

 spin_lock(&inireq->inilock);
 tfcp_req = inireq->tfcp_req;
 if (tfcp_req)
  fcloop_tfcp_req_get(tfcp_req);
 spin_unlock(&inireq->inilock);

 if (!tfcp_req)

  return;


 spin_lock_irq(&tfcp_req->reqlock);
 switch (tfcp_req->inistate) {
 case 128:
 case 130:
  tfcp_req->inistate = INI_IO_ABORTED;
  break;
 case 129:
  abortio = 0;
  break;
 default:
  spin_unlock_irq(&tfcp_req->reqlock);
  WARN_ON(1);
  return;
 }
 spin_unlock_irq(&tfcp_req->reqlock);

 if (abortio)

  WARN_ON(!schedule_work(&tfcp_req->abort_rcv_work));
 else {




  fcloop_tfcp_req_put(tfcp_req);
 }
}
