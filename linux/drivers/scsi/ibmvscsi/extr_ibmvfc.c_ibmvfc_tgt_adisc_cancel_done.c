
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_target {int kref; } ;
struct ibmvfc_host {int work_wait_q; int abort_threads; } ;
struct ibmvfc_event {struct ibmvfc_target* tgt; struct ibmvfc_host* vhost; } ;


 int ibmvfc_free_event (struct ibmvfc_event*) ;
 int ibmvfc_release_tgt ;
 int kref_put (int *,int ) ;
 int tgt_dbg (struct ibmvfc_target*,char*) ;
 int wake_up (int *) ;

__attribute__((used)) static void ibmvfc_tgt_adisc_cancel_done(struct ibmvfc_event *evt)
{
 struct ibmvfc_host *vhost = evt->vhost;
 struct ibmvfc_target *tgt = evt->tgt;

 tgt_dbg(tgt, "ADISC cancel complete\n");
 vhost->abort_threads--;
 ibmvfc_free_event(evt);
 kref_put(&tgt->kref, ibmvfc_release_tgt);
 wake_up(&vhost->work_wait_q);
}
