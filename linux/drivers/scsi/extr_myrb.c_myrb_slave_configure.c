
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ channel; int no_uld_attach; scalar_t__ lun; int tagged_supported; struct myrb_ldev_info* hostdata; int host; } ;
struct myrb_ldev_info {scalar_t__ state; } ;


 int ENXIO ;
 int KERN_INFO ;
 scalar_t__ MYRB_DEVICE_ONLINE ;
 int myrb_devstate_name (scalar_t__) ;
 scalar_t__ myrb_logical_channel (int ) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ) ;

__attribute__((used)) static int myrb_slave_configure(struct scsi_device *sdev)
{
 struct myrb_ldev_info *ldev_info;

 if (sdev->channel > myrb_logical_channel(sdev->host))
  return -ENXIO;

 if (sdev->channel < myrb_logical_channel(sdev->host)) {
  sdev->no_uld_attach = 1;
  return 0;
 }
 if (sdev->lun != 0)
  return -ENXIO;

 ldev_info = sdev->hostdata;
 if (!ldev_info)
  return -ENXIO;
 if (ldev_info->state != MYRB_DEVICE_ONLINE)
  sdev_printk(KERN_INFO, sdev,
       "Logical drive is %s\n",
       myrb_devstate_name(ldev_info->state));

 sdev->tagged_supported = 1;
 return 0;
}
