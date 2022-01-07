
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmefc_fcp_req {int status; int (* done ) (struct nvmefc_fcp_req*) ;struct fcloop_ini_fcpreq* private; } ;
struct fcloop_ini_fcpreq {int inilock; int * tfcp_req; } ;
struct fcloop_fcpreq {int dummy; } ;


 int fcloop_tfcp_req_put (struct fcloop_fcpreq*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nvmefc_fcp_req*) ;

__attribute__((used)) static void
fcloop_call_host_done(struct nvmefc_fcp_req *fcpreq,
   struct fcloop_fcpreq *tfcp_req, int status)
{
 struct fcloop_ini_fcpreq *inireq = ((void*)0);

 if (fcpreq) {
  inireq = fcpreq->private;
  spin_lock(&inireq->inilock);
  inireq->tfcp_req = ((void*)0);
  spin_unlock(&inireq->inilock);

  fcpreq->status = status;
  fcpreq->done(fcpreq);
 }


 fcloop_tfcp_req_put(tfcp_req);
}
