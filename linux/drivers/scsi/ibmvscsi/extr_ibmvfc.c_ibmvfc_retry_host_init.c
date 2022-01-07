
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {scalar_t__ action; int delay_init; scalar_t__ init_retries; int work_wait_q; int dev; } ;


 int IBMVFC_HOST_ACTION_INIT ;
 scalar_t__ IBMVFC_HOST_ACTION_INIT_WAIT ;
 int IBMVFC_HOST_OFFLINE ;
 scalar_t__ IBMVFC_MAX_HOST_INIT_RETRIES ;
 int __ibmvfc_reset_host (struct ibmvfc_host*) ;
 int dev_err (int ,char*) ;
 int ibmvfc_link_down (struct ibmvfc_host*,int ) ;
 int ibmvfc_set_host_action (struct ibmvfc_host*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int ibmvfc_retry_host_init(struct ibmvfc_host *vhost)
{
 int retry = 0;

 if (vhost->action == IBMVFC_HOST_ACTION_INIT_WAIT) {
  vhost->delay_init = 1;
  if (++vhost->init_retries > IBMVFC_MAX_HOST_INIT_RETRIES) {
   dev_err(vhost->dev,
    "Host initialization retries exceeded. Taking adapter offline\n");
   ibmvfc_link_down(vhost, IBMVFC_HOST_OFFLINE);
  } else if (vhost->init_retries == IBMVFC_MAX_HOST_INIT_RETRIES)
   __ibmvfc_reset_host(vhost);
  else {
   ibmvfc_set_host_action(vhost, IBMVFC_HOST_ACTION_INIT);
   retry = 1;
  }
 }

 wake_up(&vhost->work_wait_q);
 return retry;
}
