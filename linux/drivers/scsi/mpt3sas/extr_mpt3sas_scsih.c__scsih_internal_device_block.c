
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct MPT3SAS_DEVICE {int block; TYPE_1__* sas_target; } ;
struct TYPE_2__ {int handle; } ;


 int EINVAL ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int scsi_internal_device_block_nowait (struct scsi_device*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int,...) ;

__attribute__((used)) static void
_scsih_internal_device_block(struct scsi_device *sdev,
   struct MPT3SAS_DEVICE *sas_device_priv_data)
{
 int r = 0;

 sdev_printk(KERN_INFO, sdev, "device_block, handle(0x%04x)\n",
     sas_device_priv_data->sas_target->handle);
 sas_device_priv_data->block = 1;

 r = scsi_internal_device_block_nowait(sdev);
 if (r == -EINVAL)
  sdev_printk(KERN_WARNING, sdev,
      "device_block failed with return(%d) for handle(0x%04x)\n",
      r, sas_device_priv_data->sas_target->handle);
}
