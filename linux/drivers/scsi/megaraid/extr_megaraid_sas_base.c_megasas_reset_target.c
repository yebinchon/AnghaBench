
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct megasas_instance {scalar_t__ adapter_type; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int FAILED ;
 int KERN_NOTICE ;
 scalar_t__ MFI_SERIES ;
 int megasas_reset_target_fusion (struct scsi_cmnd*) ;
 int sdev_printk (int ,TYPE_2__*,char*) ;

__attribute__((used)) static int megasas_reset_target(struct scsi_cmnd *scmd)
{
 int ret;
 struct megasas_instance *instance;

 instance = (struct megasas_instance *)scmd->device->host->hostdata;

 if (instance->adapter_type != MFI_SERIES)
  ret = megasas_reset_target_fusion(scmd);
 else {
  sdev_printk(KERN_NOTICE, scmd->device, "TARGET RESET not supported\n");
  ret = FAILED;
 }

 return ret;
}
