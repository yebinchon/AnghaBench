
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {int retries; int * cmnd; TYPE_2__* device; } ;
struct megasas_instance {TYPE_1__* pdev; int adprecovery; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;
struct TYPE_5__ {TYPE_3__* host; } ;
struct TYPE_4__ {int dev; } ;


 int FAILED ;
 int KERN_NOTICE ;
 scalar_t__ MEGASAS_HW_CRITICAL_ERROR ;
 int SUCCESS ;
 scalar_t__ atomic_read (int *) ;
 int dev_err (int *,char*) ;
 int dev_notice (int *,char*) ;
 int megasas_wait_for_outstanding (struct megasas_instance*) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int ,int ) ;

__attribute__((used)) static int megasas_generic_reset(struct scsi_cmnd *scmd)
{
 int ret_val;
 struct megasas_instance *instance;

 instance = (struct megasas_instance *)scmd->device->host->hostdata;

 scmd_printk(KERN_NOTICE, scmd, "megasas: RESET cmd=%x retries=%x\n",
   scmd->cmnd[0], scmd->retries);

 if (atomic_read(&instance->adprecovery) == MEGASAS_HW_CRITICAL_ERROR) {
  dev_err(&instance->pdev->dev, "cannot recover from previous reset failures\n");
  return FAILED;
 }

 ret_val = megasas_wait_for_outstanding(instance);
 if (ret_val == SUCCESS)
  dev_notice(&instance->pdev->dev, "reset successful\n");
 else
  dev_err(&instance->pdev->dev, "failed to do reset\n");

 return ret_val;
}
