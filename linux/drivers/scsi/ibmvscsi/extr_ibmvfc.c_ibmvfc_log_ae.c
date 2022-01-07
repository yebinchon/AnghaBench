
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {scalar_t__ state; int host; } ;


 int FCH_EVT_LINKDOWN ;
 int FCH_EVT_LINKUP ;
 int FCH_EVT_RSCN ;
 int IBMVFC_AE_LINKDOWN ;
 int IBMVFC_AE_LINKUP ;
 int IBMVFC_AE_RSCN ;
 scalar_t__ IBMVFC_HALTED ;
 scalar_t__ IBMVFC_INITIALIZING ;
 int fc_get_event_number () ;
 int fc_host_post_event (int ,int ,int ,int ) ;

__attribute__((used)) static void ibmvfc_log_ae(struct ibmvfc_host *vhost, int events)
{
 if (events & IBMVFC_AE_RSCN)
  fc_host_post_event(vhost->host, fc_get_event_number(), FCH_EVT_RSCN, 0);
 if ((events & IBMVFC_AE_LINKDOWN) &&
     vhost->state >= IBMVFC_HALTED)
  fc_host_post_event(vhost->host, fc_get_event_number(), FCH_EVT_LINKDOWN, 0);
 if ((events & IBMVFC_AE_LINKUP) &&
     vhost->state == IBMVFC_INITIALIZING)
  fc_host_post_event(vhost->host, fc_get_event_number(), FCH_EVT_LINKUP, 0);
}
