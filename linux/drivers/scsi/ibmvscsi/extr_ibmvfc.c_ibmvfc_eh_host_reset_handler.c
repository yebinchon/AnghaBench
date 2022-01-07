
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct ibmvfc_host {int host; int dev; } ;
struct TYPE_2__ {int host; } ;


 int FAILED ;
 int SUCCESS ;
 int dev_err (int ,char*) ;
 int ibmvfc_issue_fc_host_lip (int ) ;
 struct ibmvfc_host* shost_priv (int ) ;

__attribute__((used)) static int ibmvfc_eh_host_reset_handler(struct scsi_cmnd *cmd)
{
 int rc;
 struct ibmvfc_host *vhost = shost_priv(cmd->device->host);

 dev_err(vhost->dev, "Resetting connection due to error recovery\n");
 rc = ibmvfc_issue_fc_host_lip(vhost->host);

 return rc ? FAILED : SUCCESS;
}
