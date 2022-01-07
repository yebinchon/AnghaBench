
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct myrb_hba {int io_base; int (* reset ) (int ) ;} ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int SUCCESS ;
 struct myrb_hba* shost_priv (struct Scsi_Host*) ;
 int stub1 (int ) ;

__attribute__((used)) static int myrb_host_reset(struct scsi_cmnd *scmd)
{
 struct Scsi_Host *shost = scmd->device->host;
 struct myrb_hba *cb = shost_priv(shost);

 cb->reset(cb->io_base);
 return SUCCESS;
}
