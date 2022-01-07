
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {int dummy; } ;


 int DID_ERROR ;
 int IBMVFC_HOST_ACTION_RESET ;
 int IBMVFC_LINK_DOWN ;
 int ibmvfc_link_down (struct ibmvfc_host*,int ) ;
 int ibmvfc_purge_requests (struct ibmvfc_host*,int ) ;
 int ibmvfc_set_host_action (struct ibmvfc_host*,int ) ;

__attribute__((used)) static void ibmvfc_hard_reset_host(struct ibmvfc_host *vhost)
{
 ibmvfc_purge_requests(vhost, DID_ERROR);
 ibmvfc_link_down(vhost, IBMVFC_LINK_DOWN);
 ibmvfc_set_host_action(vhost, IBMVFC_HOST_ACTION_RESET);
}
