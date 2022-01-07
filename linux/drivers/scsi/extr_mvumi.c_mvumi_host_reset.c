
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_cmnd {int retries; int * cmnd; TYPE_3__* request; TYPE_2__* device; } ;
struct mvumi_hba {TYPE_4__* instancet; } ;
struct TYPE_8__ {int (* reset_host ) (struct mvumi_hba*) ;} ;
struct TYPE_7__ {int tag; } ;
struct TYPE_6__ {TYPE_1__* host; } ;
struct TYPE_5__ {scalar_t__ hostdata; } ;


 int KERN_NOTICE ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int ,int ,int ) ;
 int stub1 (struct mvumi_hba*) ;

__attribute__((used)) static int mvumi_host_reset(struct scsi_cmnd *scmd)
{
 struct mvumi_hba *mhba;

 mhba = (struct mvumi_hba *) scmd->device->host->hostdata;

 scmd_printk(KERN_NOTICE, scmd, "RESET -%u cmd=%x retries=%x\n",
   scmd->request->tag, scmd->cmnd[0], scmd->retries);

 return mhba->instancet->reset_host(mhba);
}
