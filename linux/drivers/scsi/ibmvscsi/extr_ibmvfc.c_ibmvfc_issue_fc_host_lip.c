
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {int dev; } ;
struct Scsi_Host {int dummy; } ;


 int dev_err (int ,char*) ;
 int ibmvfc_reset_host (struct ibmvfc_host*) ;
 int ibmvfc_wait_while_resetting (struct ibmvfc_host*) ;
 struct ibmvfc_host* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int ibmvfc_issue_fc_host_lip(struct Scsi_Host *shost)
{
 struct ibmvfc_host *vhost = shost_priv(shost);

 dev_err(vhost->dev, "Initiating host LIP. Resetting connection\n");
 ibmvfc_reset_host(vhost);
 return ibmvfc_wait_while_resetting(vhost);
}
