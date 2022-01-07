
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct MPT3SAS_DEVICE {int block; TYPE_1__* sas_target; } ;
struct TYPE_2__ {int handle; } ;


 int EINVAL ;
 int KERN_WARNING ;
 int SDEV_RUNNING ;
 int scsi_internal_device_block_nowait (struct scsi_device*) ;
 int scsi_internal_device_unblock_nowait (struct scsi_device*,int ) ;
 int sdev_printk (int ,struct scsi_device*,char*,int,...) ;

__attribute__((used)) static void
_scsih_internal_device_unblock(struct scsi_device *sdev,
   struct MPT3SAS_DEVICE *sas_device_priv_data)
{
 int r = 0;

 sdev_printk(KERN_WARNING, sdev, "device_unblock and setting to running, "
     "handle(0x%04x)\n", sas_device_priv_data->sas_target->handle);
 sas_device_priv_data->block = 0;
 r = scsi_internal_device_unblock_nowait(sdev, SDEV_RUNNING);
 if (r == -EINVAL) {





  sdev_printk(KERN_WARNING, sdev,
      "device_unblock failed with return(%d) for handle(0x%04x) "
      "performing a block followed by an unblock\n",
      r, sas_device_priv_data->sas_target->handle);
  sas_device_priv_data->block = 1;
  r = scsi_internal_device_block_nowait(sdev);
  if (r)
   sdev_printk(KERN_WARNING, sdev, "retried device_block "
       "failed with return(%d) for handle(0x%04x)\n",
       r, sas_device_priv_data->sas_target->handle);

  sas_device_priv_data->block = 0;
  r = scsi_internal_device_unblock_nowait(sdev, SDEV_RUNNING);
  if (r)
   sdev_printk(KERN_WARNING, sdev, "retried device_unblock"
       " failed with return(%d) for handle(0x%04x)\n",
       r, sas_device_priv_data->sas_target->handle);
 }
}
